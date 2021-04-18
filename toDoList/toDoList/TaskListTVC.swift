//
//  TaskListTVC.swift
//  toDoList
//
//  Created by Serhio Brit on 08.01.2021.
//

import UIKit

// основной контроллер (первый экран)

class TaskListTVC: UITableViewController {
    var arrayUserTasks = [TaskModel]()         // массив тасок
    var vc = TaskVC()                    // переменная хранит новую таску со второго экрана
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayUserTasks.count
    }
    
    @IBAction func showTaskVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        vc = storyboard.instantiateViewController(withIdentifier: "TaskVC") as! TaskVC
        vc.saveTaskDeleagate = self
        present(vc, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell") as? TaskCell else { return UITableViewCell() }
        arrayUserTasks[indexPath.row].currentIndex = indexPath
        let task = arrayUserTasks[indexPath.row]
        cell.cellData(task: task)
        
        
        return cell
    }
}

extension TaskListTVC: SaveUserTaskDelegate {
    func saveTask(task: TaskModel) {
        arrayUserTasks.append(task)
        tableView.reloadData()
    }
}
