//
//  RepositoryProtocol.swift
//  BeConnected_v1
//
//  Created by Manso García Iván on 3/8/23.
//

import Foundation

protocol RepositoryProtocol {
    var urlRequest: URLRequest { get }
    var baseUrl: URL { get }
    var path: String { get }
}
