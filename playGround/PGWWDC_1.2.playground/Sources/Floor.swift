//
//  Floor.swift
//  WWDC
//
//  Created by Renan Alves on 15/03/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import Foundation
import SpriteKit

public class Floor : SKShapeNode{
    
    
    public override init() {
        super.init()
    }
    
   public  init(size: CGSize,position: CGPoint) {
        super.init()
        self.init(rectOf: size)
        
        self.position = position
        setupPhisics(size: size)
        
    }
    
    func setupPhisics(size: CGSize){
        
        self.physicsBody = SKPhysicsBody(rectangleOf: size)
        self.physicsBody?.categoryBitMask = PhysicsCategory.floorCategory
        self.physicsBody?.contactTestBitMask = PhysicsCategory.floorCategory | PhysicsCategory.squareCategory | PhysicsCategory.triangleCategory
        self.physicsBody?.collisionBitMask = PhysicsCategory.floorCategory | PhysicsCategory.squareCategory | PhysicsCategory.triangleCategory
        self.physicsBody?.isDynamic = false
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.mass = 1000
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
