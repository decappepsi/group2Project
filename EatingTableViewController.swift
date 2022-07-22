//
//  EatingTableViewController.swift
//  group2Project
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class EatingTableViewController: UIViewController {
    
    @IBOutlet weak var eatingMainLabel: UILabel!
    
    @IBOutlet weak var eatingEffectsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eatingMainLabel.isHidden = true
        eatingEffectsLabel.isHidden = true

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBAction func eatingMainButton(_ sender: Any) {
        eatingMainLabel.isHidden = false
    }
    
    @IBAction func eatingEffectsButton(_ sender: Any) {
        eatingEffectsLabel.isHidden = false
    }
    
    // MARK: - Table view data source
}
