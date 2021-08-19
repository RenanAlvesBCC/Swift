//
//  ViewController.swift
//  gameofchats
//
//  Created by Renan Alves on 9/5/19.
//  Copyright © 2019 Renan Alves. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.modalPresentationStyle = .fullScreen
        if #available(iOS 13.0, *) {
            navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
        } else {
            // Fallback on earlier versions
        }
    }
    
    @available(iOS 13.0, *)
    @objc func handleLogout() {
        let loginController = LoginViewController()
        present(loginController, animated: true, completion: nil)
    }


}

