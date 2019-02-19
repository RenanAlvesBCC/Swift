//
//  phisics.swift
//  WWDC
//
//  Created by Renan Alves on 16/03/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import Foundation


public struct PhysicsCategory {
    
    
    public static let floorCategory: UInt32 = 0b1 << 1
    public static let squareCategory: UInt32 = 0b1 << 2
    public static let triangleCategory: UInt32 = 0b1 << 3
    public static let circleCategory: UInt32 = 0b1 << 4
    public static let wallCategory: UInt32 = 0b1 << 5
    
}
