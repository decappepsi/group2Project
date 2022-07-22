//
//  AnxietyTableViewController.swift
//  group2Project
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class AnxietyViewController: UIViewController {
    
    @IBOutlet weak var effectslabel: UILabel!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        effectslabel.isHidden = true
        mainLabel.isHidden = true

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @IBAction func effectsButton(_ sender: Any) {
        effectslabel.isHidden = false
    }
    @IBAction func mainButton(_ sender: Any) {
        mainLabel.isHidden = false
    }
    
    
    // MARK: - Table view data source

}
