//
//  HttpPostClient.swift
//  Data
//
//  Created by Renan de Araujo Morais Alves on 24/08/21.
//

import Foundation


public protocol HttpPostClient {
    
    func post(to url: URL, with data: Data?)
    
}
