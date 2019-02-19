//
//  FirstScreenPresenter.swift
//  ViperMyExample
//
//  Created by Renan Alves on 21/06/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import Foundation


class FirstScreenPresenter: FirstScreenPresenterProtocol {
    var controller: FirstScreenControllerProtocol?
    var router: FirstScreenRouter!
    
    //Entitys
    var name = "Renan Alves"
    
    var interactor: FirstScreenInteractorProtocol!
    
    
    func getName() -> String{
        return self.name
    }
    
    
}
