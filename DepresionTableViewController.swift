//
//  DepresionTableViewController.swift
//  group2Project
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class DepresionTableViewController: UIViewController {

    @IBOutlet weak var depressionMainLabel: UILabel!
    
    @IBOutlet weak var depressionEffectsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        depressionMainLabel.isHidden = true
        depressionEffectsLabel.isHidden = true

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBAction func depressionMainButton(_ sender: Any) {
        depressionMainLabel.isHidden = false
    }
    
    @IBAction func depressionEffectsButton(_ sender: Any) {
        depressionEffectsLabel.isHidden = false
    }
    
    // MARK: - Table view data source

}
