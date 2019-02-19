//
//  SessaoTableViewCell.swift
//  AppleTVNetflix
//
//  Created by Renan Alves on 14/02/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import UIKit

class SessaoTableViewCell: UITableViewCell {

    @IBOutlet weak var conteudoCollection: UICollectionView!
    @IBOutlet weak var lblTitleSessao: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        conteudoCollection.backgroundColor = UIColor.clear
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}

extension SessaoTableViewCell{
    
    func setCollectionViewDataSourceDelegate
        <D: UICollectionViewDelegate & UICollectionViewDataSource>
        (_ dataSourceDelegate: D, forRow row: Int)
    {
        conteudoCollection.delegate = dataSourceDelegate
        conteudoCollection.dataSource = dataSourceDelegate
        
        conteudoCollection.reloadData()
    }
    
}
