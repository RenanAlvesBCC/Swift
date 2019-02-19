//
//  BuracoNegro.swift
//  BuracoNegro
//
//  Created by Renan Alves on 21/03/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import Foundation
import SpriteKit

class BuracoNegro: SKShapeNode {
    
    private let size = CGSize(width: 150, height: 150)
    
    override init() {
        super.init()
    }
    
    
    init(position: CGPoint) {
        super.init()
        self.init(rectOf: size)
        
        setupPhysic()
        self.name = "Buraco"
        self.fillColor = .red
        self.position = position
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPhysic(){
        
        self.physicsBody = SKPhysicsBody(rectangleOf: size)
        self.physicsBody?.categoryBitMask = PhysicsCategory.buracoNegro
        self.physicsBody?.contactTestBitMask = PhysicsCategory.wall
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.isDynamic = true
        
        
    }
    
}
