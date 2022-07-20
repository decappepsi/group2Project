//
//  LinksViewController.swift
//  group2Project
//
//  Created by Scholar on 7/19/22.
//

import UIKit

class LinksViewController: UIViewController {

    @IBAction func stressButton(_ sender: Any) {
        if let url = URL(string: "https://www.healthline.com/health/stress") {
          UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
        }
    @IBAction func crisisButton(_ sender: Any) {
        if let url = URL(string: "https://988lifeline.org/talk-to-someone-now/") {
          UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    /*// MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.// Pass the selected object to the new view controller.
    }
    */
}

    @IBAction func harmButton(_ sender: Any) {
        if let url = URL(string: "https://harmreduction.org/resource-center/") {
          UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
}
    @IBAction func hotlineButton(_ sender: Any) {
        if let url = URL(string: "https://www.pleaselive.org/hotlines/") {
          UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}
}
