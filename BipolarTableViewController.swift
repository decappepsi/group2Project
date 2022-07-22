//
//  BipolarTableViewController.swift
//  group2Project
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class BipolarTableViewController: UIViewController {

    @IBOutlet weak var bipolarMainLabel: UILabel!
    
    @IBOutlet weak var bipolarEffectsLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bipolarMainLabel.isHidden = true
        bipolarEffectsLable.isHidden = true

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBAction func bipolarMainButton(_ sender: Any) {
        bipolarMainLabel.isHidden = false
    }
    @IBAction func bipolarEffectsButton(_ sender: Any) {
        bipolarEffectsLable.isHidden = false
    }
    
    // MARK: - Table view data source

}
