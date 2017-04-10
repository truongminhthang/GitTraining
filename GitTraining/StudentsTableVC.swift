//
//  StudentsTableVCTableViewController.swift
//  GitTraining
//
//  Created by Trương Thắng on 4/10/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

class StudentsTableVC: UITableViewController {
    
    var students = Array(0...100).map { (index) -> String in
        return "Hoc sinh \(index)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return students.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        cell.textLabel?.text = students[indexPath.row]
        return cell
    }
}
