//
//  MockNewsService.swift
//  BeConnected_v1Tests
//
//  Created by Manso García Iván on 9/8/23.
//

//import Foundation
//import Combine
//@testable import BeConnected_v1
//
//
//
//class MockNewsService: NewsServiceProtocol {
//    var requestCallCount = 0
//    var requestEndpoint: RepositoryImpl?
//    
//    func request(from endpoint: RepositoryImpl) -> AnyPublisher<News, RemoteDataSourceImpl> {
//        requestCallCount += 1
//        requestEndpoint = endpoint
//        
//        // Aquí puedes devolver datos simulados o errores para tus pruebas
//        // Por ejemplo, puedes devolver un objeto News simulado o un error simulado
//        return Just(News(/* datos simulados */))
//            .setFailureType(to: RemoteDataSourceImpl.self)
//            .eraseToAnyPublisher()
//    }
//}
