//
//  DataViewController.swift
//  pagecontrol
//
//  Created by alehanter on 13.09.2021.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    var displayText: String?
    var index: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = displayText
        // Do any additional setup after loading the view.
    }
    
}
