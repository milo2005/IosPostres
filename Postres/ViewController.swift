//
//  ViewController.swift
//  Postres
//
//  Created by Aplimovil on 11/10/17.
//  Copyright © 2017 Aplimovil. All rights reserved.
//

import UIKit
import SDWebImage

class ViewController: UIViewController, UITableViewDataSource {

    var data:[Postre] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data = [
            Postre(nombre: "Pie de Limon", precio: 5000, img: "https://media.betazeta.com/sabrosia/2013/09/piedelimonweb_ok-660x550.jpg"),
            Postre(nombre: "Tres Leches", precio: 4000, img: "https://www.elmundodeldulce.com.pe/sites/default/files/TRES-LECHES.jpg"),
            Postre(nombre: "Melon", precio: 6000, img: "https://www.recetin.com/wp-content/uploads/2013/07/melocoton.jpg")
            
        ]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - DataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:PostreTableViewCell = tableView.dequeueReusableCell(withIdentifier: "celdaPostre") as! PostreTableViewCell
        
        let postre = data[indexPath.row]
        cell.title.text = postre.nombre
        cell.price.text = "\(postre.precio)"
        cell.img.sd_setImage(with: URL(string: postre.img))
        
        return cell
        
    }


}

