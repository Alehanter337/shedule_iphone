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
    
    @IBOutlet weak var firstLesson: UILabel!
    var displayLesson: String?
    
    @IBOutlet weak var secondLesson: UILabel!
    var displayLesson_2: String?
    
    @IBOutlet weak var thirdLesson: UILabel!
    var displayLesson_3: String?
    
    @IBOutlet weak var FourthLesson: UILabel!
    var displayLesson_4: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = displayText
        firstLesson.text = displayLesson
        secondLesson.text = displayLesson_2
        thirdLesson.text = displayLesson_3
        FourthLesson.text = displayLesson_4
    }
    
}
