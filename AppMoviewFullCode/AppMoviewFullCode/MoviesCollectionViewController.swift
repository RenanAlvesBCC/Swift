//
//  MoviesViewController.swift
//  AppMoviewFullCode
//
//  Created by Renan Alves on 06/11/18.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import UIKit

class MoviesCollectionViewController: UICollectionViewController {

    private let movieCellIdentifier = "movieCell"
    private var collectionViewController : UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.backgroundColor = .white
        setupCollectionView()
    }

    private func setupCollectionView() {
        collectionView.register(MovieCollectionCell.self, forCellWithReuseIdentifier: movieCellIdentifier)
    }
}

extension MoviesCollectionViewController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: movieCellIdentifier, for: indexPath)
        
        return cell
    }
    
}

extension MoviesCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          return CGSize(width: view.frame.width, height: 200)
    }
    
}
