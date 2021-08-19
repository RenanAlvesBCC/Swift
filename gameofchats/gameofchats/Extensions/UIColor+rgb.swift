//
//  UIColor+rgb.swift
//  gameofchats
//
//  Created by Renan Alves on 9/6/19.
//  Copyright © 2019 Renan Alves. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    
}
