//
//  Circle.swift
//  WWDC
//
//  Created by Renan Alves on 15/03/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import SpriteKit

public class Circle: SKShapeNode,MovedByImpulse{
    
    public var range = CGFloat()
    
    public override init() {
        super.init()
    }
    
    
    public init(_radius: CGFloat,_position: CGPoint,_range: CGFloat,_timer: TimeInterval){
        super.init()
        self.init(circleOfRadius: _radius)
        
        setupPhysicsBody(radius: _radius)
        
        self.position = _position
        self.fillColor = .white
        self.range = _range
        
        self.fillTexture = SKTexture(image: UIImage(named: "sadCircle")!)
        self.moved(timer: _timer)
    }
        
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
     private func setupPhysicsBody(radius: CGFloat){
        
        self.physicsBody = SKPhysicsBody(circleOfRadius: radius)
        
        self.physicsBody?.categoryBitMask = PhysicsCategory.circleCategory
        self.physicsBody?.collisionBitMask = PhysicsCategory.floorCategory | PhysicsCategory.wallCategory
        self.physicsBody?.contactTestBitMask = PhysicsCategory.floorCategory | PhysicsCategory.wallCategory
        self.physicsBody?.affectedByGravity = true
        self.physicsBody?.isDynamic = true
        self.physicsBody?.mass = 0.1
    }
    
    //MARK: Protocol moved
    
    public func moved(timer: TimeInterval){
        
        let action = SKAction.applyImpulse(CGVector(dx: 0.0, dy: 50.0), duration: 1.0)
        self.run(SKAction.repeatForever(action))
        
        
        run(SKAction.moveTo(x: range, duration: timer),completion:{
            self.removeAllActions()
        })
        
    }
    
    //Tempo é calculado da seguinte forma: v = distancia/tempo, portanto, minha sena irá durá 50 unidades de tempo, logo quando v=tamanho da cena no eixo x, dividito pelo tempo de 50 = 13.37 e quando tiver descelecionado, ira andar mais rapido, logo 16.67
    public func change() {
        self.removeAllActions()
        
        let time = (range - self.position.x)/13.34
        
        self.moved(timer: TimeInterval(time))
    }
    
    public func reset() {
        self.removeAllActions()
        
        let time = (range - self.position.x)/16.67
        
        self.moved(timer: TimeInterval(time))
    }
        
        
}
