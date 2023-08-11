//
//  NewsService.swift
//  BeConnected_v1
//
//  Created by Manso García Iván on 3/8/23.
//

import Foundation
import Combine

struct NewsService: NewsServiceProtocol {
    
    func request(from endpoint: RepositoryImpl) -> AnyPublisher<News, RemoteDataSourceImpl> {
        return URLSession
            .shared
            .dataTaskPublisher(for: endpoint.urlRequest)
            .receive(on: DispatchQueue.main)
            .mapError { _ in RemoteDataSourceImpl.unknown}
            .flatMap { data, response -> AnyPublisher<News, RemoteDataSourceImpl> in
                
                guard let response = response as? HTTPURLResponse else {
                    return Fail(error: RemoteDataSourceImpl.unknown).eraseToAnyPublisher()
                }
                
                if (200...299).contains(response.statusCode) {
                    let jsonDecoder = JSONDecoder()
                    jsonDecoder.dateDecodingStrategy = .iso8601
                    
                    return Just(data)
                        .decode(type: News.self, decoder: jsonDecoder)
                        .mapError { _ in RemoteDataSourceImpl.decodingError }
                        .eraseToAnyPublisher()
                } else {
                    return Fail(error: RemoteDataSourceImpl.errorCode(response.statusCode)).eraseToAnyPublisher()
                }
                
            }
            .eraseToAnyPublisher()
    }
    
}

