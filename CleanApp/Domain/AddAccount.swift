//
//  AddAccount.swift
//  Domain
//
//  Created by Renan de Araujo Morais Alves on 24/08/21.
//

import Foundation

public struct AddAccountModel: Encodable {
    public var name: String
    public var email: String
    public var password: String
    public var passwordConfirmation: String
    
    
    public init(name: String, email: String, password: String, passwordConfirmation: String) {
        self.name = name
        self.email = email
        self.password = password
        self.passwordConfirmation = passwordConfirmation
    }
}

public protocol AddAccount {
    
    func add(addAccountModel: AddAccountModel, completion: @escaping (Result<AddAccountModel, Error>) -> Void)
    
}
