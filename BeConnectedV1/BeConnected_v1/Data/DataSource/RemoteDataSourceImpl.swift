//
//  RemoteDataSource.swift
//  BeConnected_v1
//
//  Created by Manso García Iván on 3/8/23.
//

import Foundation
//Errores de la api

enum RemoteDataSourceImpl: Error {
    case decodingError
    case errorCode(Int)
    case unknown
}

extension RemoteDataSourceImpl: LocalizedError{
    var errorDescription: String?{
        switch self{
            //testeamos el error de que algun objeto se sale fuera del servicio
        case .decodingError:
            return "Failed to decode the object from the service"
            //testeamos el error de algo fue mal y le pasas el codigo del error
        case .errorCode(let code):
            return "\(code) - Something went wrong"
            //y para errores desconocidos o que no estan declarados
        case .unknown:
            return "The error is unknown"
        }
    }
}
