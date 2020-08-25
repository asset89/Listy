//
//  ViewController.swift
//  Listy
//
//  Created by Asset Ryskul on 8/23/20.
//  Copyright © 2020 Asset Ryskul. All rights reserved.
//

import UIKit

class ListyTableViewController: UITableViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        imageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell =  tableView.dequeueReusableCell(withIdentifier: "parallaxCell", for: indexPath) as? ParallaxCell {
            cell.configureCell(forImage: imageArray[indexPath.row]!, forDescription: nameArray[indexPath.row])
            return cell
        }
        return UITableViewCell()
        
    }

    
    


}

