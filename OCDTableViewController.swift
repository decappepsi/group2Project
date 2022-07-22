//
//  OCDTableViewController.swift
//  group2Project
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class OCDTableViewController: UIViewController {
    
    @IBOutlet weak var ocdMainLabel: UILabel!
    
    @IBOutlet weak var ocdEffectsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ocdMainLabel.isHidden = true
        ocdEffectsLabel.isHidden = true

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBAction func ocdMainButton(_ sender: Any) {
        ocdMainLabel.isHidden = false
    }
    
    @IBAction func ocdEffectsButton(_ sender: Any) {
        ocdEffectsLabel.isHidden = false
    }
    
    
    // MARK: - Table view data source
}
