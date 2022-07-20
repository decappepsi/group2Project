//
//  LinksViewController.swift
//  group2Project
//
//  Created by Scholar on 7/19/22.
//

import UIKit

class LinksViewController: UIViewController {

    @IBOutlet weak var stressButton: UIButton!
    @IBOutlet weak var suicideButton: UIButton!
    @IBOutlet weak var harmButton: UIButton!
    @IBOutlet weak var hotlineButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        // Do any additional setup after loading the view.
    }
    
    @IBAction func youtubeLink(_ sender: UIButton) {
        if let url = URL(string: "https://www.healthline.com/health/stress") {
          UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}

}
