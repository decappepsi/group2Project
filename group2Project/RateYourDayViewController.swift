//
//  RateYourDayViewController.swift
//  group2Project
//
//  Created by Scholar on 7/19/22.
//

import UIKit

class RateYourDayViewController: UIViewController {
    
    @IBOutlet weak var smileyFace: UIButton!
    @IBOutlet weak var mehFace: UIButton!
    @IBOutlet weak var sadFace: UIButton!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var journalTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        smileyFace.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        mehFace.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        sadFace.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
    }
    
    @IBAction func smileyFaceTapped(_ sender: Any) {
        message.text = "I'm glad you had a good day! Let's have an even better day tomorrow!"
    }
    
    @IBAction func mehFaceTapped(_ sender: Any) {
        message.text = "I'm sure the day will get better!"
    }
    
    @IBAction func sadFaceTapped(_ sender: Any) {
        message.text = "I'm sorry to hear that your day wasn't great. I hope you have a good day tomorrow."
    }



}
