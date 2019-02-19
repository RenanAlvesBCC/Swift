//
//  Circle.swift
//  WWDC
//
//  Created by Renan Alves on 15/03/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import SpriteKit

public class Square: SKShapeNode, MovedByImpulse{
    
    private var range = CGFloat()
    
    public override init() {
        super.init()
    }
    
    public init(_size: CGSize,_position: CGPoint,_range: CGFloat,_timer: TimeInterval) {
        super.init()
        self.init(rectOf: _size)
        
        self.position = _position
        self.range = _range
        setupPhisicsBody(size: _size)
        self.fillColor = .white
        
        self.fillTexture = SKTexture(image: UIImage(named: "sadSquare")!)
        self.moved(timer: _timer)
    }
    
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupPhisicsBody(size: CGSize){
        
        self.physicsBody = SKPhysicsBody(rectangleOf: self.frame.size)
        self.physicsBody?.categoryBitMask = PhysicsCategory.squareCategory
        self.physicsBody?.collisionBitMask = PhysicsCategory.floorCategory | PhysicsCategory.wallCategory
        self.physicsBody?.contactTestBitMask = PhysicsCategory.floorCategory | PhysicsCategory.wallCategory
        self.physicsBody?.affectedByGravity = true
        self.physicsBody?.isDynamic = true
        self.physicsBody?.mass = 0.1
    }
    
    //MARK: Protocol moved
    
    public func moved(timer: TimeInterval){
        
        self.run(SKAction.moveTo(x: range, duration: timer), withKey: "run")
        
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
