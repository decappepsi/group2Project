//
//  RateYourDayViewController.swift
//  group2Project
//
//  Created by Scholar on 7/19/22.
//

import UIKit

public var moodEmoji = ""

class RateYourDayViewController: UIViewController {
    
    var previousVC = ToDoTableTableViewController()
    
    @IBOutlet weak var smileyFace: UIButton!
    @IBOutlet weak var mehFace: UIButton!
    @IBOutlet weak var sadFace: UIButton!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var titleTextField: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        smileyFace.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        mehFace.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        sadFace.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
    }
    
    @IBAction func smileyFaceTapped(_ sender: Any) {
        message.text = "I'm glad you had a good day! Let's have an even better day tomorrow!"
        moodEmoji = "💚​"
    }
    
    @IBAction func mehFaceTapped(_ sender: Any) {
        message.text = "I'm sure the day will get better!"
        moodEmoji = "💛​"
    }
    
    @IBAction func sadFaceTapped(_ sender: Any) {
        message.text = "I'm sorry to hear that your day wasn't great. I hope you have a good day tomorrow."
        moodEmoji = "​❤️​"
    }
    
    @IBAction func finishTapped(_ sender: Any) {
        // we have to grab this view context to be able to work with Core Data
          if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

            // we are creating a new ToDoCD object here, naming it toDo
            let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)

            // if the titleTextField has text, we will call that text titleText
            if let titleText = titleTextField.text {
                // we will take the titleText and assign that value to toDo.name
                // this .name and .important came from the attributes you typed in on the Core Data page!
                toDo.name = titleText
                toDo.important = moodEmoji
            }
              
            //previousVC.toDos.append(toDo)
            //previousVC.tableView.reloadData()

            try? context.save()

            navigationController?.popViewController(animated: true)
              
          }
          
      }

}
