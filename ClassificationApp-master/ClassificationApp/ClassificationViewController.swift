//
//  ClassificationViewController.swift
//  ClassificationApp
//
//  Created by Italo Henrique Queiroz on 19/02/18.
//  Copyright © 2018 Italo Henrique Queiroz. All rights reserved.
//

import UIKit
import GameController
class ClassificationViewController: UIViewController {
    @IBOutlet weak var verticalLayoutConstraint: NSLayoutConstraint!
    @IBOutlet weak var horizontalLayoutConstraint: NSLayoutConstraint!
    @IBOutlet weak var squareView: UIView!
    
    var controller: GCController?
    
    var leftPoint: CGPoint!
    var rightPoint: CGPoint!
    let animationDuration = 0.5
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getPoints()
        
        controller = GCController.controllers().first
        controller?.motion?.valueChangedHandler = { (motion : GCMotion) -> () in
            let x = motion.gravity.x
            let value = x < -0.3 ? self.leftPoint : x > 0.3 ? self.rightPoint : CGPoint.zero
            self.move(view: self.squareView, to: value!)
            // Whatever you want to do with the gravity and userAcceleration
        }

        // o any additional setup after loading the view.
    }

    func getPoints(){
        let size = self.view.frame.size
        self.leftPoint = CGPoint(x: -size.width/3, y: 0)
        self.rightPoint = CGPoint(x: size.width/3, y: 0)
    }
    
    func move(view: UIView, to point: CGPoint){
        self.view.layoutIfNeeded()
        self.horizontalLayoutConstraint.constant = point.y
        self.verticalLayoutConstraint.constant = point.x
        UIView.animate(withDuration: TimeInterval(self.animationDuration), animations: {
            self.view.layoutIfNeeded()
        })
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
