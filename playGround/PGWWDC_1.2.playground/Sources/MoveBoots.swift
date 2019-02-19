//
//  MoveBoots.swift
//  WWDC
//
//  Created by Renan Alves on 16/03/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import Foundation
import SpriteKit


public protocol MovedByImpulse {
    
    func moved(timer: TimeInterval)
    func change()
    func reset()
}


