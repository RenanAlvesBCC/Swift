//
//  TableViewController.swift
//  DesafioNetflixTV
//
//  Created by Renan Alves on 07/02/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionSession.dataSource = self
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "sessao", for: indexPath) as! TableViewCell
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 552
        
    }

}

extension TableViewController: UICollectionViewDataSource{
    
    let filmes = ["AteUltimoHomem","Extraordinario","C.A","Fury","Sniper"]
    let titleFilmes = ["Ate o ultimo Homem", "O Extraordinário", "Capitão America","Coração de Ferro","Sniper Americano"]
    let sessoes = ["Filmes","Series"]
    let series = ["breakingBad","casaDePapel","lucifer","suits","designated"]
    let titleSeries = ["Breaking bad","La Casa de Papel","Lucifer","Suits","Designated Survival"]
    
    var numberSessao = 0
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionSession", for: indexPath) as! CollectionViewCell
        
        if filmes[indexPath.row] == "Sniper" {
            numberSessao = 1
        }
        
        if numberSessao == 0 {
            
            cell.img.image = UIImage(named: filmes[indexPath.row])
            cell.title.text = titleFilmes[indexPath.row]
            
        }else{
            
            cell.img.image = UIImage(named: series[indexPath.row])
            cell.title.text = titleSeries[indexPath.row]
            
        }
        
        return cell
    }
    
    
}
