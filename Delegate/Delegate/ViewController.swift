//
//  ViewController.swift
//  Delegate
//
//  Created by Renan Alves on 05/04/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "prepare" {
            if let vc = segue.destination as? SecondViewController {
                vc.delegate = self
                vc.plusName = self
            }
            
        }
        
    }
    
}

extension ViewController: ViewControllerDelegate, SecondViewDelegate{
    
    func changeName(_ name: String) {
        self.lblText.text = name
    }
    
    func plusName(_ pName: String) {
        self.lblText.text = self.lblText.text!+pName
    }
    
}

