//
//  View.swift
//  VIPER_ARCHITETURE
//
//  Created by Renan Alves on 25/07/21.
//

import Foundation

import UIKit

// ViewController
// protocolo
//reference presenter

protocol AnyView {
    
    var presenter: AnyPresenter? { get set }
    
    func update(with users: [User])
    func update(with error: String)
    
}

class UserViewController: UIViewController, AnyView, UITableViewDelegate {
    
    var presenter: AnyPresenter?
    
    private let tableView: UITableView = {
        let table = UITableView()
        
        table.register(UITableViewCell.self, forCellReuseIdentifier: "userCell")
        
        table.isHidden = true
        
        return table
    }()
    
    var users: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func update(with users: [User]) {
        
        DispatchQueue.main.async {
            self.users = users
            self.tableView.reloadData()
            self.tableView.isHidden = false
        }
        
    }
    
    func update(with error: String) {
        
    }
    
}

extension UserViewController: UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath)
        
        cell.textLabel?.text = users[indexPath.row].name
        
        return cell 
    }
}
