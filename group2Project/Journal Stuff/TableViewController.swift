//
//  TableTableViewController.swift
//  group2Project
//
//  Created by Scholar on 7/20/22.
//

import UIKit

public var fullScreenNote = "Label"

class ToDoTableTableViewController: UITableViewController {

    var toDos : [ToDoCD] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    
    // keep, matches VW
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }
    
    //matches VW
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let ToDo = toDos[indexPath.row]
        
        if let name = ToDo.name {
            if let mood = ToDo.important {
            cell.textLabel?.text = mood + " " + name
            } else {
                cell.textLabel?.text = ToDo.name
            }
        }
        return cell
    }


    // MARK: - Navigation

    // keep
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    //matches VW
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let addVC = segue.destination as? RateYourDayViewController {
            addVC.previousVC = self
          }
    }
    
    //matches VW
    override func viewWillAppear(_ animated: Bool) {
        getToDos()
    }
    
    //matches VW
    func getToDos() {
      if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
        if let coreDataToDos = try? context.fetch(ToDoCD.fetchRequest()) as? [ToDoCD] {
                toDos = coreDataToDos
                tableView.reloadData()
        }
      }
    }
    
    // delete function
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
                    context.delete(toDos[indexPath.row])
                }

                toDos.remove(at: indexPath.row)
                
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
    }
    
    //for updating the label to show the text from the entry the user selected
    //use the "didSelectRowAt" override func tableView that is preloaded into swift
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //access your core data
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            //update your public variable to store the string of the user's journal entry
            fullScreenNote = toDos[indexPath.row].name!
            //update the label outlet on the next view controller
        }
    }

}
