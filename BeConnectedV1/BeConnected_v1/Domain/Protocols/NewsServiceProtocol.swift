//
//  ServiceProtocol.swift
//  BeConnected_v1
//
//  Created by Manso García Iván on 3/8/23.
//

import Foundation
import Combine

protocol NewsServiceProtocol {
    func request(from endpoint:  NewsAPI) -> AnyPublisher<News, RemoteDataSourceImpl>
}

