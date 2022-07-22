//
//  SchizoTableViewController.swift
//  group2Project
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class SchizoTableViewController: UIViewController {

    @IBOutlet weak var schizoMainLabel: UILabel!
    
    @IBOutlet weak var schizoEffectsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        schizoMainLabel.isHidden = true
        schizoEffectsLabel.isHidden = true

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBAction func schizoMainButton(_ sender: Any) {
        schizoMainLabel.isHidden = false
    }
    @IBAction func schizoEffectsButton(_ sender: Any) {
        schizoEffectsLabel.isHidden = false
    }
    

    // MARK: - Table view data source
}
