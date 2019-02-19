//
//  ViewController.swift
//  Raspadinha
//
//  Created by Renan Alves on 02/03/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblSenha: UILabel!
    
    var raspador : SKSpriteNode{
     return SKSpriteNode()
    }
    
    var scene: SKScene{
        return SKScene()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        raspador.color = .clear
        raspador.size = CGSize(width: 50, height: 50)
        scene.backgroundColor = .black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first
        let position = touch?.location(in: nil)
        
        raspador.position = position!
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        scene.frame.size.x
        raspador.position.x
        
    }
    
    
}

