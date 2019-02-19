//
//  ViewController.swift
//  TesteAudio
//
//  Created by Renan Alves on 26/06/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var som = Som()
    var som1 = Som()
    var som2 = Som()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        som.playSound(nameSound: "bensound-buddy", WithExtension: ".mp3")
        som1.playSound(nameSound: "bensound-happyrock", WithExtension: ".mp3")
        som2.playSound(nameSound: "tink", WithExtension: ".mp3")
    }

        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
