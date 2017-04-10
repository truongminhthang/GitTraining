//
//  StudentDetailsTableVC.swift
//  GitTraining
//
//  Created by Trương Thắng on 4/10/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

class StudentDetailsTableVC: UITableViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var student : Student? = Student(name: "Doanh", age: 21)

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = student!.name
        ageLabel.text = "\(student!.age)"
    }

    

}
