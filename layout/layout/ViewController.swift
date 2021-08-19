//
//  ViewController.swift
//  layout
//
//  Created by Renan de Araujo Morais Alves on 19/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    let stackView: UIStackView = {
        
        let stack = UIStackView()
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        stack.isLayoutMarginsRelativeArrangement = true
        
        stack.axis = .vertical
        
        stack.alignment = .center
        
        stack.distribution = .fillProportionally
        
        stack.spacing = 24
        
        return stack
    }()
    
    let loginField: UITextField = {
       
        let login = UITextField()
        
        login.placeholder = "Informe seu e-mail"
        
        login.translatesAutoresizingMaskIntoConstraints = false
        
        login.layer.borderWidth = 2
        
        login.layer.borderColor = .init(gray: 1, alpha: 1)
        
        return login
        
    }()
    
    let passwordField: UITextField = {
       
        let password = UITextField()
        
        password.isSecureTextEntry = true
        
        password.placeholder = "Digite a senha"
        
        password.layer.borderWidth = 2
        
        password.layer.borderColor = .init(gray: 1, alpha: 1)
        
        return password
        
    }()
    
    let forgotPassword: UIButton = {
    
        let button = UIButton()
        
        button.backgroundColor = .none
        
        button.setTitle("Esqueci minha senha", for: .normal)
        
        button.tintColor = .red
        
        return button
    }()
    
    let buttonLogin: UIButton = {
      
        let button = UIButton()
        
        button.backgroundColor = .red
        
        button.tintColor = .white
        
        button.setTitle("Login", for: .normal)
        
        return button
        
    }()
    
    @objc func handleLogin() {
        print("Fazer Login")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(imageLiteralResourceName: "backgroundNetflixLogin"))
        
        stackView.addArrangedSubview(loginField)
        stackView.addArrangedSubview(passwordField)
        stackView.addArrangedSubview(forgotPassword)
        stackView.addArrangedSubview(buttonLogin)
        
        self.view.addSubview(stackView)
        
        stackView.backgroundColor = .systemGray2
        loginField.backgroundColor = .white
        passwordField.backgroundColor = .white
  
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        stackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)

        loginField.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.8).isActive = true
        loginField.heightAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 0.2).isActive = true
        
        passwordField.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.8).isActive = true
        passwordField.heightAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 0.2).isActive = true
        
        buttonLogin.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.8).isActive = true
        buttonLogin.heightAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 0.15).isActive = true

        buttonLogin.addTarget(self, action: #selector(handleLogin), for: UIControl.Event.touchDown)
    }


}

