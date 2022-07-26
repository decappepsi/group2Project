//
//  PTSDTableViewController.swift
//  group2Project
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class PTSDTableViewController: UIViewController {
    
    @IBOutlet weak var ptsdMainLabel: UILabel!
    
    @IBOutlet weak var ptsdEffectsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ptsdMainLabel.isHidden = true
        ptsdEffectsLabel.isHidden = true

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBAction func ptsdMainButton(_ sender: Any) {
        ptsdMainLabel.isHidden = false
    }
    
    @IBAction func ptsdEffectsButton(_ sender: Any) {
        ptsdEffectsLabel.isHidden = false
    }
    
    // MARK: - Table view data source
}
