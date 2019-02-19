//
//  SecondViewController.swift
//  Delegate
//
//  Created by Renan Alves on 05/04/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var txtfName: UITextField!
    @IBOutlet weak var lblSobName: UILabel!
    @IBOutlet weak var txtfSobName: UITextField!
    
    
    var delegate : ViewControllerDelegate?
    var plusName: SecondViewDelegate?
    
    
    @IBAction func ChangeName(_ sender: Any) {
        
        delegate?.changeName(txtfName.text!)
        plusName?.plusName(txtfSobName.text!)
        self.dismiss(animated: false, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
