//
//  FirstScreenViewController.swift
//  ViperMyExample
//
//  Created by Renan Alves on 21/06/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import UIKit

class FirstScreenViewController: UIViewController {

    @IBOutlet weak var lblTeste: UILabel!
    var presenter: FirstScreenPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.lblTeste.text = self.presenter.getName()
        
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
