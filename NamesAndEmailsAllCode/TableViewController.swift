//
//  ViewController.swift
//  NamesAndEmailsAllCode
//
//  Created by Chris Chadillon on 2019-01-12.
//  Copyright © 2019 Chris Chadillon. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let someData = [["name":"Bob", "email":"bob@ranch.com"],
                    ["name":"Alice", "email":"bob@burgers.com"],
                    ["name":"Eve","email":"eve@spynet.com"]]
    
    let cellType = "MainCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellType)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return someData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let theCell = tableView.dequeueReusableCell(withIdentifier: cellType, for: indexPath)
        let name = someData[indexPath.row]["name"]!
        let email = someData[indexPath.row]["email"]!
        theCell.textLabel?.text = name + " - " + email
        return theCell
    }
    
}

