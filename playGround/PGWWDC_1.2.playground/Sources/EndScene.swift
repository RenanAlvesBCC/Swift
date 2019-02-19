//
//  EndScene.swift
//  WWDC
//
//  Created by Renan Alves on 22/03/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import SpriteKit
import GameplayKit
import UIKit

public class EndScene: SKScene {
    
    
    public var square = Square()
    public var circle = Circle()
    public var triangle = Triangle()
    
    public var linha = SKShapeNode(rectOf: CGSize(width: 300, height: 50))
    
    public override func sceneDidLoad() {
        
        self.view?.showsNodeCount = false
        self.view?.showsPhysics = false
        
        self.scene?.setScale(0.2)
        let linha = Floor(size:  CGSize(width: (self.scene?.size.width)!, height: 1.5), position: CGPoint(x: (self.scene?.size.width)!/2, y:  ((self.scene?.size.height)!/8)))
        let linha2 = Floor(size: CGSize(width: (self.scene?.size.width)!, height: 1.5), position: CGPoint(x: (self.scene?.size.width)!/2, y:  (self.scene?.size.height)!/2))
        linha.fillColor = .clear
        linha2.fillColor = .clear
        
        self.addChild(linha)
        self.addChild(linha2)
        
        setBoots()
    }
    
    public override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        if triangle.position.x == self.size.width/2 {
            triangle.removeAllActions()
        }
        if square.position.x == self.size.width/2 * 1.5{
            square.removeAllActions()
        }
        if circle.position.x == self.size.width/2 * 0.3{
            circle.removeAllActions()
        }
    }
    
    func setBoots(){
        
        
        self.square = Square(_size: CGSize(width: 50, height: 50),_position: CGPoint(x: (((self.scene?.size.width)!/2)*2.5),y: (self.scene?.size.height)!/7.5), _range: self.size.width/2 * 1.5, _timer: 3.0)
        self.triangle = Triangle(_position: CGPoint(x: 0.0, y: ((self.scene?.size.height)!/7.5)), _range: self.size.width/2, _timer: 3.0)
        self.circle = Circle(_radius: 25, _position: CGPoint(x: 0.0, y: ((self.scene?.size.height)!/8)), _range: self.size.width/2 * 0.3, _timer: 3.0)
        
        square.physicsBody?.affectedByGravity = false
        triangle.physicsBody?.affectedByGravity = false
        circle.physicsBody?.affectedByGravity = false
        
        
        self.addChild(triangle)
        self.addChild(square)
        self.addChild(circle)
        
        
    }
    
    func phisic() {
        self.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: self.size.width, height: self.size.height))
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.isDynamic = true
    }
}
