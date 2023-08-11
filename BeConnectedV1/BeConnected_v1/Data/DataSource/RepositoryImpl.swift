//
//  RepositoryImpl.swift
//  BeConnected_v1
//
//  Created by Manso García Iván on 3/8/23.
//

import Foundation


enum RepositoryImpl {
    case getNews
}

extension RepositoryImpl: RepositoryProtocol {
    var baseUrl: URL {
        switch self{
        case .getNews:
            return URL(string: "https://api.lil.software")!
        }
    }
    var path: String{
        return "/news"
    }
    var urlRequest: URLRequest {
        print(self.baseUrl.appendingPathComponent(self.path))
            return URLRequest(url: self.baseUrl.appendingPathComponent(self.path))
    }
}
