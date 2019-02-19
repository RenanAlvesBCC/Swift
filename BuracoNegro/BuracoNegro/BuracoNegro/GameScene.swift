//
//  GameScene.swift
//  BuracoNegro
//
//  Created by Renan Alves on 21/03/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene,SKPhysicsContact {
    
    
    override func sceneDidLoad() {
        setupPhysics()
        self.physicsWorld.contactDelegate = self as! SKPhysicsContactDelegate
    }
    
    override func didMove(to view: SKView) {
        
            self.physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
        

    }
    
    
    func touchDown(atPoint pos : CGPoint) {
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    }
    
    func touchUp(atPoint pos : CGPoint) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
        let touch = touches.first
        
        let buraco = BuracoNegro(position: (touch?.location(in: self))!)
        
        self.addChild(buraco)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
       self.childNode(withName: "Buraco")?.removeFromParent()
    
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    func setupPhysics(size: CGSize){
        
        scene?.physicsBody = SKPhysicsBody(edgeLoopFrom: size)
        
        self.physicsBody?.categoryBitMask = PhysicsCategory.wallCategory
        self.physicsBody?.contactTestBitMask = PhysicsCategory.circleCategory | PhysicsCategory.squareCategory | PhysicsCategory.triangleCategory
        self.physicsBody?.collisionBitMask = PhysicsCategory.circleCategory | PhysicsCategory.squareCategory | PhysicsCategory.triangleCategory
        
        self.physicsWorld.contactDelegate = self
    }
}
