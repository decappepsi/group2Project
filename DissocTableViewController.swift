//
//  DissocTableViewController.swift
//  group2Project
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class DissocTableViewController: UIViewController {
    
    @IBOutlet weak var dissociativeMainLabel: UILabel!
    
    @IBOutlet weak var dissociativeEffectsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dissociativeMainLabel.isHidden = true
        dissociativeEffectsLabel.isHidden = true

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBAction func dissociativeMainButton(_ sender: Any) {
        dissociativeMainLabel.isHidden = false
    }
    
    @IBAction func dissociativeEffectsButton(_ sender: Any) {
        dissociativeEffectsLabel.isHidden = false
    }
    
    // MARK: - Table view data source
}
