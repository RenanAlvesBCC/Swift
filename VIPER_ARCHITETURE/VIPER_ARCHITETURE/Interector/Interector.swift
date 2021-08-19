//
//  Interector.swift
//  VIPER_ARCHITETURE
//
//  Created by Renan Alves on 25/07/21.
//

import Foundation


// object
// protocol
// ref to presenter


// https://jsonplaceholder.typicode.com/users


protocol AnyInterector {
    
    var presenter: AnyPresenter? { get set }
    
    func getUsers()
    
}

class UserInterector: AnyInterector {
    var presenter: AnyPresenter?
    
    
    
    func getUsers() {
        
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
        
            guard let data = data, error == nil else {
                self?.presenter?.interectorDidFetchUsers(with: .failure(FetchError.failed))
                return
            }
            
            do {
                
                let entities = try JSONDecoder().decode([User].self, from: data)
                self?.presenter?.interectorDidFetchUsers(with: .success(entities))
                
            } catch {
                
                self?.presenter?.interectorDidFetchUsers(with: .failure(FetchError.failed))
                
            }
            
        }

        task.resume()
    }
    
    
}
