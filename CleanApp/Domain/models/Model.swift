//
//  Model.swift
//  Domain
//
//  Created by Renan de Araujo Morais Alves on 24/08/21.
//

import Foundation

public protocol Model: Encodable {}

public extension Model {
    
    func toData() -> Data? {
        
        return try? JSONEncoder().encode(self)
        
    }
    
}
