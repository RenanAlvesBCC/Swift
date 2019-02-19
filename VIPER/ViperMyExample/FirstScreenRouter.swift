//
//  FirstScreen_Router.swift
//  ViperMyExample
//
//  Created by Renan Alves on 21/06/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import Foundation
import UIKit

class FirstScreenRouter: FirstScreenControllerProtocol {
    var presenter: FirstScreenPresenterProtocol!
    
    var controller: FirstScreenViewController!
    
    func formatData() {
        
    }
    
    static func setupModule() -> UIViewController {
        
        

        let storyBoard = UIStoryboard(name: "FirstScreen", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "FirstScreen") as! FirstScreenViewController

        let presenter = FirstScreenPresenter()
        let interactor = FirstScreenInteractor()
        let router = FirstScreenRouter()
        
        controller.presenter = presenter
        
        presenter.controller = controller as? FirstScreenControllerProtocol
        presenter.interactor = interactor
        presenter.router = router
        
        router.controller = controller
        
        return controller
    }
    
    func performOther () {
        //        let nextController = <ControllerRouter>.setupModule()
        //        controller?.present(nextController, animated: true, completion: nil)
    }
    
    
}
