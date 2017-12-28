//
//  SecondViewController.swift
//  TestViewController
//
//  Created by Mac on 28/12/17.
//  Copyright © 2017 sagar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!    
    @IBOutlet weak var numberLabel: UILabel!
    
    var namePassed = ""
    var addPassed = ""
    var numPassed: Int?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = namePassed
        addressLabel.text = addPassed
        numberLabel.text = String(numPassed!)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
