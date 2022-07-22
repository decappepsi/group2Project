//
//  BorderlineTableViewController.swift
//  group2Project
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class BorderlineTableViewController: UIViewController {

    @IBOutlet weak var borderlineMainLabel: UILabel!
    
    @IBOutlet weak var borderlineEffectsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        borderlineMainLabel.isHidden = true
        borderlineEffectsLabel.isHidden = true

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @IBAction func borderlineMainButton(_ sender: Any) {
        borderlineMainLabel.isHidden = false
    }
    
    @IBAction func borderlineEffectsButton(_ sender: Any) {
        borderlineEffectsLabel.isHidden = false
    }
    // MARK: - Table view data source

}
