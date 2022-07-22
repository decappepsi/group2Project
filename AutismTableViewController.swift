//
//  AutismTableViewController.swift
//  group2Project
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class AutismTableViewController: UIViewController {

    @IBOutlet weak var autismMainLabel: UILabel!
    
    @IBOutlet weak var autismCausesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        autismMainLabel.isHidden = true
        autismCausesLabel.isHidden = true

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @IBAction func autismCausesButton(_ sender: Any) {
        autismMainLabel.isHidden = false
    }
    @IBAction func autismEffectsButton(_ sender: Any) {
        autismCausesLabel.isHidden = false
    }
    // MARK: - Table view data source

}
