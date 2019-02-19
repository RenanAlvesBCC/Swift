//
//  RouterProtocol.swift
//  ViperMyExample
//
//  Created by Renan Alves on 21/06/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import Foundation

protocol FirstScreenControllerProtocol : class {
    var presenter : FirstScreenPresenterProtocol! {get set}
    
    func formatData ()
}

protocol FirstScreenPresenterProtocol : class {
    
    var controller : FirstScreenControllerProtocol? {get set}
    var router : FirstScreenRouter! {get set}
    var interactor : FirstScreenInteractorProtocol! {get set}

    func getName() -> String
//    func getNumbersOfRows() -> Int
//    func viewWillAppear ()
//    func pessoaAt(_ indexPath: IndexPath) -> Pessoa
    
}

protocol FirstScreenInteractorProtocol : class {
    
//    func loadEquipeRocket()
}

//protocol EquipeRocketInteractorOutputProtocol : class {

//    func fetched(_ error : Error)
//    func fetched(_ pessoas: [Pessoa])
//}

//protocol EquipeRocketRouterProtocol : class {
//    
//    var controller : FirstScreenViewController? {get set}
//    
//}
