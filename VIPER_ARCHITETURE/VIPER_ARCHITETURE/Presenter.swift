//
//  Presenter.swift
//  VIPER_ARCHITETURE
//
//  Created by Renan Alves on 25/07/21.
//

import Foundation

// Object
// protocol
// ref to Interector, router, view

enum FetchError: Error {
    case failed
}

protocol AnyPresenter {
    
    var router: AnyRouter? { get set }
    var interactor: AnyInterector? { get set }
    var view: AnyView? { get set }
    
    func interectorDidFetchUsers(with result: Result<[User], Error>)
    
}

class UserPresenter: AnyPresenter {
    
    var interactor: AnyInterector? {
        didSet {
            interactor?.getUsers()
        }
    }
    
    var router: AnyRouter?
    
    var view: AnyView?

    
    func interectorDidFetchUsers(with result: Result<[User], Error>) {
        
        switch result {
        case .success(let users):
            view?.update(with: users)
        case .failure:
            view?.update(with: "Something went wrong")
            
        }
        
    }
    
}
