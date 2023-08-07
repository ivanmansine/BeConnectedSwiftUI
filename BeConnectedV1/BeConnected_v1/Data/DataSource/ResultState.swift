//
//  ResultState.swift
//  BeConnected_v1
//
//  Created by Manso García Iván on 3/8/23.
//

import Foundation

enum ResultState {
    case loading
    case success(content: [Article])
    case failed(error: Error)
}
