//
//  Wall.swift
//  WWDC
//
//  Created by Renan Alves on 19/03/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import Foundation
import SpriteKit

public class Wall: SKShapeNode{
    
    
   public override init() {
        super.init()
    }
    
    
    public init(size: CGSize,position: CGPoint){
        super.init()
        self.init(rectOf: size)
        
        setupPhysicsBody(size: size)
        self.position = position
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPhysicsBody(size: CGSize){
        
        self.physicsBody = SKPhysicsBody(rectangleOf: size)
        self.physicsBody?.categoryBitMask = PhysicsCategory.wallCategory
        self.physicsBody?.contactTestBitMask = PhysicsCategory.wallCategory | PhysicsCategory.squareCategory | PhysicsCategory.triangleCategory | PhysicsCategory.circleCategory
        self.physicsBody?.collisionBitMask = PhysicsCategory.wallCategory | PhysicsCategory.squareCategory | PhysicsCategory.triangleCategory | PhysicsCategory.circleCategory
        self.physicsBody?.isDynamic = false
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.mass = 1000
        
        
    }
    
}
