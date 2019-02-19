//
//  GameScene.swift
//  WWDC
//
//  Created by Renan Alves on 15/03/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import PlaygroundSupport
import SpriteKit
import GameplayKit
import UIKit

public class GameScene: SKScene,SKPhysicsContactDelegate {
    
    public var positionX = CGFloat()
    public var positionY = CGFloat()
    
    public var square = Square()
    public var circle = Circle()
    public var triangle = Triangle()
    public var wall = Wall()
    public var wallEnd = Wall()
    
    public var control = ControlElements()
    
    public var endAnimates = Int(0)
    
    
    public override func sceneDidLoad() {
        super.sceneDidLoad()
        
        positionX = (self.size.width/2)
        positionY = (self.size.height/4)
        
        self.physicsWorld.contactDelegate = self
        
        //Controll_Boots
        
        setScene()
        setBoots()
    }
    
    public override func didMove(to view: SKView) {
        
        
    }
    
    
    public override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
        
    }
    
    public func didBegin(_ contact: SKPhysicsContact){
        
        let nodeA = contact.bodyA
        let nodeB = contact.bodyB
        
        if (nodeA.categoryBitMask == PhysicsCategory.circleCategory && nodeB.categoryBitMask == PhysicsCategory.wallCategory || nodeA.categoryBitMask == PhysicsCategory.wallCategory && nodeB.categoryBitMask == PhysicsCategory.circleCategory) {
            if (circle.position.x > (self.scene?.size.width)!/2){
                circle.removeAllActions()
                self.endAnimates+=1
            }
        }else if nodeA.categoryBitMask == PhysicsCategory.squareCategory && nodeB.categoryBitMask == PhysicsCategory.wallCategory || nodeA.categoryBitMask == PhysicsCategory.wallCategory && nodeB.categoryBitMask == PhysicsCategory.squareCategory {
            if (square.position.x > (self.scene?.size.width)!/2){
                square.removeAllActions()
                self.endAnimates+=1
            }
        }else if nodeA.categoryBitMask == PhysicsCategory.triangleCategory && nodeB.categoryBitMask == PhysicsCategory.wallCategory || nodeA.categoryBitMask == PhysicsCategory.wallCategory && nodeB.categoryBitMask == PhysicsCategory.triangleCategory {
            if (triangle.position.x > (self.scene?.size.width)!/2){
                triangle.removeAllActions()
                self.endAnimates+=1
            }
        }
        if endAnimates == 3{
            let endScene = EndScene()
            endScene.size = (self.view?.bounds.size)!
            self.view?.presentScene(endScene)
        }
    }
    
    
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches{
            let position = touch.location(in: self)
            
            for node in self.nodes(at: position){
                
                if let name = node.name{
                    
                    control.didSelectButton(name: name)
                    didSelectBoot(name: name)
                }
                
            }
        }
        
    }
    
    public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }
    
    //MARK: - Starting_Scene
    public func setScene(){
        
        
        
        let floor1 = Floor(size: CGSize(width: (self.scene?.size.width)!, height: 0.2), position: CGPoint(x: positionX, y: positionY))
        let floor2 = Floor(size: CGSize(width: (self.scene?.size.width)!, height: 0.2), position: CGPoint(x: positionX, y: positionY*2))
        let floor3 = Floor(size: CGSize(width: (self.scene?.size.width)!, height: 0.2), position: CGPoint(x: positionX, y: positionY*3))
        
        self.wall = Wall(size: CGSize(width: 2.0, height: (self.scene?.size.height)!), position: CGPoint(x: 0.0, y: positionY*2))
        self.wallEnd = Wall(size: CGSize(width: 2.0, height: (self.scene?.size.height)!), position: CGPoint(x: positionX*2, y: positionY*2))
        
        self.control = ControlElements(size: CGSize(width: (self.scene?.size.width)!, height: (self.scene?.size.height)!/4), position: CGPoint(x: positionX, y: positionY*0.5))
        
        self.addChild(floor1)
        self.addChild(floor2)
        self.addChild(floor3)
        self.addChild(wall)
        self.addChild(wallEnd)
        self.addChild(control)
        
    }
    
    //MARK: - Starting_Boots
    public func setBoots(){
        
        
        self.square = Square(_size: CGSize(width: 50, height: 50),_position: CGPoint(x: 30, y: (self.size.height/4.1)*3),_range: self.size.width,_timer: 40.0)
        self.triangle = Triangle(_position: CGPoint(x: 30, y: (self.size.height/3.2)),_range: self.size.width,_timer: 40.0)
        self.circle = Circle(_radius: 25,_position: CGPoint(x: 30, y: (self.size.height/4)*4),_range: self.size.width,_timer: 40.0)
        
        self.addChild(triangle)
        self.addChild(square)
        self.addChild(circle)
        
        
    }
    
    public func didSelectBoot(name: String){
        
        if name == "Quadrado"{
            square.change()
            circle.reset()
            triangle.reset()
        }else if name == "Circulo"{
            circle.change()
            square.reset()
            triangle.reset()
        }else{
            triangle.change()
            circle.reset()
            square.reset()
        }
        
    }
    
    public func setupPhysics(size: CGRect){
        
        scene?.physicsBody = SKPhysicsBody(edgeLoopFrom: size)
        
        self.physicsBody?.categoryBitMask = PhysicsCategory.wallCategory
        self.physicsBody?.contactTestBitMask = PhysicsCategory.circleCategory | PhysicsCategory.squareCategory | PhysicsCategory.triangleCategory
        self.physicsBody?.collisionBitMask = PhysicsCategory.circleCategory | PhysicsCategory.squareCategory | PhysicsCategory.triangleCategory
        
        
        
    }
    
}
