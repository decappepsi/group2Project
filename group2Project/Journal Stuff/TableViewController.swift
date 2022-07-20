//
//  TableTableViewController.swift
//  group2Project
//
//  Created by Scholar on 7/20/22.
//

import UIKit

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
            cell.textLabel?.text = mood + name
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
}
