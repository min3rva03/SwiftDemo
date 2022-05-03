//
//  ViewController.swift
//  UITableViewDemo_01
//
//  Created by Minerva Nolasco Espino on 03/05/22.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    var books : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        books =  ["Harry Potter y la piedra filosofal",
                  "Harry Potter y la cámara secreta",
                  "Harry Potter y el prisionero de Azkaban",
                  "Harry Potter y el cáliz de fuego",
                  "Harry Potter y la Orden del Fénix",
                  "Harry Potter y el misterio del príncipe",
                  "Harry Potter y las Reliquias de la Muerte",
                  "Harry Potter y el legado maldito",
                  "Los cuentos de Beedle el Bardo",
                  "Animales fantásticos y dónde encontrarlos",
                  "Animales fantásticos Los crímenes de Grindelwald",
                  "Quidditch a través de los tiempos",
                  "Hogwarts una guía incompleta y poco fiable"]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "mycell")
        
        cell.imageView?.image = UIImage(named: books[indexPath.row])
          cell.textLabel?.text  = books[indexPath.row]
        
          return cell
    }

}

