//
//  AddAccount.swift
//  Domain
//
//  Created by Renan de Araujo Morais Alves on 24/08/21.
//

import Foundation

struct AddAccountModel {
    var name: String
    var email: String
    var password: String
    var passwordConfirmation: String
}

protocol AddAccount {
    
    func add(addAccountModel: AddAccountModel, completion: @escaping (Result<AddAccountModel, Error>) -> Void)
    
}
