//
//  ViewController.swift
//  AppleTVNetflix
//
//  Created by Renan Alves on 14/02/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource{

    
    var qualSessao = 0
    let filmes = ["AteUltimoHomem","Extraordinario","C.A","Fury","Sniper","AsBranquelas"]
    let titleFilmes = ["Ate o ultimo Homem", "O Extraordinário", "Capitão America","Coração de Ferro","Sniper Americano","As Branquelas"]
    let sessoes = ["Filmes","Series"]
    let series = ["breakingBad","casaDePapel","lucifer","suits","designated"]
    let titleSeries = ["Breaking bad","La Casa de Papel","Lucifer","Suits","Designated Survival"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //MARK:- Table View Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sessao", for: indexPath) as! SessaoTableViewCell
        
        if indexPath.row == 1{
            cell.lblTitleSessao.text = "Filme"
        }else{
            cell.lblTitleSessao.text = "Series"
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 589
    }
    
    
    
    //Mark:- Collection View Delegate
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        if qualSessao == 0{
            return filmes.count
        }else{
           return series.count
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "conteudo", for: indexPath) as! ConteudoCollectionViewCell
        
        if qualSessao == 0{
            if filmes[indexPath.row] == "Sniper"{
                qualSessao = 1
            }
            cell.capaConteudo.image = UIImage(named: filmes[indexPath.row])
            cell.tituloConteudo.text = titleFilmes[indexPath.row]
        }else{
            if series[indexPath.row] == "designated"{
                qualSessao = 0
            }
            cell.capaConteudo.image = UIImage(named: series[indexPath.row])
            cell.tituloConteudo.text = titleSeries[indexPath.row]
        }
        cell.tituloConteudo.sizeToFit()
        
        
        return cell
    }
    
    
    
    func indexPathForPreferredFocusedView(in collectionView: UICollectionView) -> IndexPath? {
        
        let indexPath = IndexPath(row: 2, section: 0)
        
        return indexPath
    }
    
}

