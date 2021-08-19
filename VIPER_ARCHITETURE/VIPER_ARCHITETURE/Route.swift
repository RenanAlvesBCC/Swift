//
//  Route.swift
//  VIPER_ARCHITETURE
//
//  Created by Renan Alves on 25/07/21.
//

import Foundation

import UIKit


// Object
// Entry point

typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter {
    
    var entry: EntryPoint? { get }
    
    static func start() -> AnyRouter
    
}


class UserRouter: AnyRouter {
    
    var entry: EntryPoint?
    
    static func start() -> AnyRouter {
        let router = UserRouter()
        
        // Assing VIP
        var view: AnyView = UserViewController()
        var presenter: AnyPresenter = UserPresenter()
        var interector: AnyInterector = UserInterector()
        
        view.presenter = presenter
        
        interector.presenter = presenter
        
        presenter.router = router
        presenter.view = view
        presenter.interactor = interector
        
        router.entry = view as? EntryPoint
        
        return router
    }
    
}
