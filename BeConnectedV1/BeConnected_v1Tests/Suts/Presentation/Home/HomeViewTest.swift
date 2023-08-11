//
//  HomeViewTest.swift
//  BeConnected_v1Tests
//
//  Created by Manso García Iván on 9/8/23.
//

import XCTest
@testable import BeConnected_v1

class HomeViewTests: XCTestCase {
    
    func testLoadFunctionWithValidURL() {
        // Arrange
        let homeView = HomeView()
        
        // Act
        homeView.load(from: "https://www.example.com")
        let urlOpened = UIApplication.shared.canOpenURL(NSURL(string: "https://www.washingtonpost.com/national-security/2023/07/05/us-navy-iran-video-tankers/")! as URL)
        
        // Assert
        XCTAssertTrue(urlOpened, "El URL debería haberse abierto correctamente")
    }
    
    func testLoadFunctionWithInvalidURL() {
        // Arrange
        let homeView = HomeView()
        
        // Act
        homeView.load(from: "invalidURL")
        let urlOpened = UIApplication.shared.canOpenURL(NSURL(string: "invalidURL")! as URL)
        
        // Assert
        XCTAssertFalse(urlOpened, "El URL no debería haberse abierto debido a que es inválido")
    }
    
    
    
//    func testArticleCellTapGesture() {
//            // Arrange
//     let homeView = HomeView()
//        let articles = [Article(title: "Article 1", url: "https://www.example.com/article1", from: "source1" as! Decoder),
//                        Article(title: "Article 2", url: "https://www.example.com/article2", from: "source2" as! Decoder)]
//        homeView.stack.state = .success(content: articles)
//
//            // Act
//            let articleCellView = homeView.getArticles()
//            articleCellView.onTapGesture()
//
//            // Assert
//            let selectedArticleURL = articleCellView.article.url
//            // Verificar si se ha cargado correctamente el artículo correspondiente al realizar el gesture
//            XCTAssertNotNil(selectedArticleURL, "El artículo seleccionado no debe ser nulo")
//            XCTAssertEqual(selectedArticleURL, URL(string: "https://www.example.com/article1"), "El artículo seleccionado debe tener la URL correcta")
//        }
    
}
