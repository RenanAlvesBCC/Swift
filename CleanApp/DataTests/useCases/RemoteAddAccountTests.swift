//
//  DataTests.swift
//  DataTests
//
//  Created by Renan de Araujo Morais Alves on 24/08/21.
//

import XCTest
import Domain
import Data

class RemoteAddAccountTests: XCTestCase {

    func test_add_should_call_httpClient_with_correct_url() {
        
        let url = URL(string: "https://any-url.com")!
        
        let (sut, httpClientSpy) = makeSut(url: url)
        
        sut.add(addAccountModel: makeAddAccountModel())
        
        XCTAssertEqual(httpClientSpy.urls, [url])
        
    }
    
    func test_add_should_call_httpClient_with_correct_data() {
        
        let (sut, httpClientSpy) = makeSut()
        
        let addAccountModel = makeAddAccountModel()
        
        sut.add(addAccountModel: addAccountModel) 
        
        XCTAssertEqual(httpClientSpy.data, addAccountModel.toData())
        
    }
    
    
    
}


extension RemoteAddAccountTests {
    
    class HttpClientSpy: HttpPostClient {
        
        var urls = [URL]()
        var data: Data?
        
        func post(to url: URL, with data: Data?) {
            self.urls.append(url)
            self.data = data
        }
        
    }
    
    func makeAddAccountModel() -> AddAccountModel {
        return AddAccountModel(name: "any_name", email: "any_name@email.com", password: "any_password", passwordConfirmation: "any_password")
    }
 
    func makeSut(url: URL = URL(string: "https://any-url.com")!) -> (sut: RemoteAddAccount, httpClientSpy: HttpClientSpy) {
        
        let httpClientSpy = HttpClientSpy()
        
        let sut = RemoteAddAccount(url: url, httpClient: httpClientSpy)
        
        return (sut: sut, httpClientSpy)
        
    }
    
}
