//
//  ControlBoots.swift
//  WWDC
//
//  Created by Renan Alves on 19/03/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import Foundation
import SpriteKit


public class ControlElements: SKShapeNode {
    
    
    private let nodeT = SKSpriteNode()
    private let nodeQ = SKSpriteNode()
    private let nodeC = SKSpriteNode()
    
    private var nodes = [SKSpriteNode]()
    
    public override init() {
        super.init()
        
    }
    
    public init(size: CGSize,position: CGPoint) {
        super.init()
        self.init(rectOf: size)
        
        self.position = position
        self.fillColor = .clear
        
        setupButtons()
        
    }
    
   public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupButtons(){
        
        nodeT.size = CGSize(width: 50, height: 50)
        nodeC.size = CGSize(width: 50, height: 50)
        nodeQ.size = CGSize(width: 50, height: 50)
        
        nodeT.name = "Triangulo"
        nodeC.name = "Circulo"
        nodeQ.name = "Quadrado"
        
        nodeT.texture = SKTexture(image: UIImage(named: "Triangle")!)
        nodeC.texture = SKTexture(image: UIImage(named: "circuloTriste")!)
        nodeQ.texture = SKTexture(image: UIImage(named: "quadradoTriste")!)
        
        //MARK: - Posição dos Botões.
        nodeC.position = CGPoint(x: -self.position.x/2, y: self.position.y/2 * 0.3)
        nodeT.position = CGPoint(x: 0.0, y: ((self.position.y/2) * 0.3))
        nodeQ.position = CGPoint(x: self.position.x/2, y: self.position.y/2 * 0.3)
        
        self.addChild(nodeT)
        self.addChild(nodeC)
        self.addChild(nodeQ)
        
        nodes.append(nodeT)
        nodes.append(nodeQ)
        nodes.append(nodeC)
        
    }
    
    public func didSelectButton(name: String){
        
        let node = checkNodeIsScale()
        
        ApllyScaleInNode(_NameToApply: name,_NameToRepply: node.name!)
    }
    
    public func ApllyScaleInNode(_NameToApply: String,_NameToRepply: String){
        
        if( _NameToApply != _NameToRepply){
            
            for node in nodes {
                
                if node.name == _NameToApply {
                    node.scale(to: CGSize(width: node.size.width*1.5, height: node.size.height*1.5))
                }else if node.name == _NameToRepply{
                    node.scale(to: CGSize(width: node.size.width/1.5, height: node.size.height/1.5))
                }
                
            }
            
        }
    }
    
    public func checkNodeIsScale()->SKSpriteNode{
        
        
        for node in nodes {
            
            if node.name == "Quadrado" && node.size == CGSize(width: 75.0, height: 75.0){
                return node
            }else if node.name == "Circulo" && node.size == CGSize(width: 75.0, height: 75.0){
                return node
            }else if node.name == "Triangulo" && node.size == CGSize(width: 75.0, height: 75.0){
                return node
            }
        }
        let node = SKSpriteNode()
        node.name = "Any"
        return node
    }
    
}
