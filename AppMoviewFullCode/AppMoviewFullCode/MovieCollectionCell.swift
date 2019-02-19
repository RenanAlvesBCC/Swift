//
//  MovieCollectionCell.swift
//  AppMoviewFullCode
//
//  Created by Renan Alves on 06/11/18.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import UIKit

class MovieCollectionCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Custom text"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupViews() {
        backgroundColor = .red
        addSubview(self.nameLabel)
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": nameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": nameLabel]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
