//
//  DataTests.swift
//  DataTests
//
//  Created by Renan de Araujo Morais Alves on 24/08/21.
//

import XCTest

class RemoteAddAccount {
    
    
    private let url: URL
    
    private let httpClient: HttpClient
    
    init(url: URL, httpClient: HttpClient) {
        self.url = url
        self.httpClient = httpClient
    }
    
    func add() {
        
        httpClient.post(url: url)
        
    }
    
}

protocol HttpClient {
    
    func post(url: URL)
    
}

class RemoteAddAccountTests: XCTestCase {

    func test_() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        let url = URL(string: "https://any-url.com")!
        
        let httpClientSpy = HttpClientSpy()
        
        let sut = RemoteAddAccount(url: url, httpClient: httpClientSpy)
        
        sut.add()
        
        XCTAssertEqual(httpClientSpy.url, url)
        
    }


    class HttpClientSpy: HttpClient {
        
        var url: URL?
        
        func post(url: URL) {
            
            self.url = url
            
        }
        
    }
    
}
