//
//  AppRouter.swift
//  ViperMyExample
//
//  Created by Renan Alves on 21/06/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import Foundation
import UIKit

class AppRouter {
    
    static func setupModule(in window: UIWindow) {
        
        let storyboard = UIStoryboard(name: "FirstScreen", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "ViewController")
        
        window.makeKeyAndVisible()
        window.rootViewController = controller
    }
    
    func presentInitialScreen(in window : UIWindow) {
        
        let controller = FirstScreenRouter.setupModule()
        
        window.makeKeyAndVisible()
        window.rootViewController = controller
    }
    
}
