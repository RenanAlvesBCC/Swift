//
//  Triangulo.swift
//  WWDC
//
//  Created by Renan Alves on 15/03/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import Foundation
import SpriteKit

public class Triangle: SKShapeNode,MovedByImpulse {
    
    
     public var range = CGFloat()
    
    //Tamanho das faces do triangulo.
    public let length: CGFloat = 30
    
    public override init() {
        super.init()
        
    }
    
    public init(_position: CGPoint,_range: CGFloat,_timer: TimeInterval) {
        super.init()
        
        
        //Contrução do triangulo como Path.
        var points = [CGPoint(x:length, y:-length / 2.0),
                      CGPoint(x:-length, y:-length / 2.0),
                      CGPoint(x: 0.0, y: length),
                      CGPoint(x:length, y:-length / 2.0)]
        
        self.init(points: &points, count: points.count)
        self.position = _position
        self.fillColor = .green
        self.range = _range
        
        setupPhysicsBody()
        self.fillTexture = SKTexture(image: UIImage(named: "Triangle")!)
        self.moved(timer: _timer)
    }
    
     func setupPhysicsBody(){
        self.physicsBody = SKPhysicsBody(polygonFrom: self.path!)
        
        self.physicsBody?.categoryBitMask = PhysicsCategory.triangleCategory
        self.physicsBody?.collisionBitMask = PhysicsCategory.floorCategory | PhysicsCategory.wallCategory
        self.physicsBody?.contactTestBitMask = PhysicsCategory.floorCategory | PhysicsCategory.wallCategory
        self.physicsBody?.affectedByGravity = true
        self.physicsBody?.isDynamic = true
        self.physicsBody?.mass = 0.1
        self.physicsBody?.allowsRotation = true
    }
    
    
    //MARK: Protocol moved
    
    public func moved(timer: TimeInterval){
        
        self.run(SKAction.moveTo(x: range, duration: timer), withKey: "run")
        
        let action = SKAction.applyImpulse(CGVector(dx: 0.0, dy: 60.0), duration: 0.5)
        let action2 = SKAction.rotate(byAngle: 0.9, duration: 1.0)
        
        self.run(SKAction.repeatForever(action))
        run(SKAction.repeatForever(action2), completion: {
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
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
