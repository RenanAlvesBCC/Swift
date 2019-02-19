//
//  ViewController.swift
//  ClassificationApp
//
//  Created by Italo Henrique Queiroz on 16/02/18.
//  Copyright © 2018 Italo Henrique Queiroz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


extension ViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "ClassificationSegue", sender: nil)
    }
    
}
extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        if let nextIndexPath = context.nextFocusedIndexPath {
            self.updateFoucsIn(index: nextIndexPath, with: CGAffineTransform(scaleX: 1.1, y: 1.1),and: coordinator)
        }
        if let previousIndexPath = context.previouslyFocusedIndexPath {
            self.updateFoucsIn(index: previousIndexPath, with: CGAffineTransform.identity, and: coordinator)
        }
    }
    
    func updateFoucsIn(index: IndexPath,with transform: CGAffineTransform, and coordinator: UIFocusAnimationCoordinator){
        coordinator.addCoordinatedAnimations({
            if let cell = self.collectionView.cellForItem(at: index) {
                cell.transform = transform
            }
        }, completion: nil)
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let collectionSize = collectionView.frame.size
        let size = CGSize(width: collectionSize.width*0.7, height: collectionSize.height*0.8)
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        let collectionSize = collectionView.frame.size

        return collectionSize.width*0.07
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        let collectionSize = collectionView.frame.size
        return collectionSize.height*0.1
    }
    
    

}


