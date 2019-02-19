//
//  MyCollectionViewController.swift
//  testeCellCircle
//
//  Created by Renan Alves on 13/03/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MyCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        self.view.backgroundColor = UIColor.orange
        
        print(self.collectionView?.canBecomeFocused)
        
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
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 8
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 6
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Configure the cell
        
        let  cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellCircle", for: indexPath) as! CicleCollectionViewCell
        
        cell.lblName.text = "exercicio \((indexPath.section * 6) + indexPath.row+1 )"
        return cell
    }


   
}


    
    

