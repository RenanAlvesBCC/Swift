//
//  ViewController.swift
//  JSONEncodeDecode
//
//  Created by Renan Alves on 28/08/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import UIKit

struct Pessoa: Codable {
    var name: String = ""
    var id: Int = 0
    
    init(_name: String,_id: Int) {
        self.name = _name
        self.id = _id
    }
}

class ViewController: UIViewController {
    
    var pessoas = [Pessoa(_name: "Renan", _id: 20), Pessoa(_name: "Alguem", _id: 30)]
    var topLevel: [Any] = []
    var getPessoas = [Pessoa]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let fileManager = FileManager.default
        
        
        for pessoa in pessoas {
            var pessoaDict : [String : Any] = [:]
            pessoaDict["Name"] = pessoa.name
            pessoaDict["Idade"] = pessoa.id
            topLevel.append(pessoaDict)
        }
        
        do {
            if let url = try? fileManager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) {
                var jsonUrl = url.appendingPathComponent("teste.json")
                let encoder = JSONEncoder()
                let data = try encoder.encode(self.pessoas)
                fileManager.createFile(atPath: jsonUrl.path, contents: data, attributes: [:])
//                let jsonData = try JSONSerialization.data(withJSONObject: topLevel, options: .prettyPrinted)
//                print(jsonUrl)
//                try jsonData.write(to: jsonUrl)
            }    
        } catch {
            
        }
        
        if let url = try? fileManager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) {
            var jsonUrl = url.appendingPathComponent("teste.json")
            
            var jsonReadData = try? Data(contentsOf: jsonUrl)
            var pessoas = [Pessoa]()
            
            if let jsonReadData = jsonReadData {
                let parserPessoas = try? JSONSerialization.jsonObject(with: jsonReadData, options: .mutableContainers)
                let pessoas = parserPessoas as! [[String : Any]]
                for pessoa in pessoas {
                    let pessoa = Pessoa(_name: pessoa["Name"]! as! String, _id: pessoa["Idade"] as! Int)
                    getPessoas.append(pessoa)
                }
            }
            
            for pessoa in getPessoas {
                print(pessoa.name)
                print(pessoa.id)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

