//
//  ListVC.swift
//  Weather Gift
//
//  Created by Michelle Krameisen on 10/11/17.
//  Copyright © 2017 Krameisen. All rights reserved.
//

import UIKit

class ListVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var locationsArray = [String]()
    var currentPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToPageVC" {
            let destination = segue.destination as! PageVC
            currentPage = (tableView.indexPathForSelectedRow?.row)!
            destination.currentPage = currentPage
            destination.locationsArray = locationsArray
        }
    }
    
}

extension ListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locationsArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LocationCell", for: indexPath)
        cell.textLabel?.text = locationsArray[indexPath.row]
        return cell
        }
}

