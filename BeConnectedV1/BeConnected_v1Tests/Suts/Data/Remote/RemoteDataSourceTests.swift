//
//  RemoteDataSourceTests.swift
//  BeConnected_v1Tests
//
//  Created by Manso García Iván on 9/8/23.
//

import XCTest

@testable import BeConnected_v1

class RemoteDataSourceTests: XCTestCase {

    // Testing decoding error case
    func testDecodingError() {
        let error = RemoteDataSourceImpl.decodingError
        XCTAssertEqual(error.errorDescription, "Failed to decode the object from the service")
    }

    // Testing error with error code case
    func testErrorCode() {
        let error = RemoteDataSourceImpl.errorCode(404)
        XCTAssertEqual(error.errorDescription, "404 - Something went wrong")
    }

    // Testing unknown error case
    func testUnknownError() {
        let error = RemoteDataSourceImpl.unknown
        XCTAssertEqual(error.errorDescription, "The error is unknown")
    }

}
