//
//  ActivityRandomizerViewController.swift
//  group2Project
//
//  Created by Scholar on 7/19/22.
//

import UIKit

class ActivityRandomizerViewController: UIViewController {

    @IBOutlet weak var randomButton: UIButton!
    @IBOutlet weak var labelBox: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

            // Do any additional setup after loading the view.
        }
        
        let activites = ["Go for a walk!", "Drink some water!", "Eat a snack!", "Chat with friends/family!", "Take a warm bath!", "Write a journal entry!", "Watch your favorite show/movie!", "Listen to your favorite music!", "Do a face mask!", "Read a book!", "Meditate!", "Make art!", "Drink tea!", "start a rock collection!"]
        
        @IBAction func pickRandomWord(_ sender: Any) {
            let randomAction = activites.randomElement()!
            self.labelBox.text=randomAction;
            
        
    }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

