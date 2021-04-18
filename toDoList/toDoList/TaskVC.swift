//
//  TaskVC.swift
//  toDoList
//
//  Created by Serhio Brit on 09.01.2021.
//

import UIKit

// контроллер, который отвечает за второй экран

class TaskVC: UIViewController {
    
    @IBOutlet weak var userTaskField: UITextField!
    
    weak var saveTaskDeleagate: SaveUserTaskDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // обработка нажатия кнопки Save
    
    @IBAction func saveTaskBtnPressed(_ sender: Any) {
        if let task = userTaskField.text {
            if !task.isEmpty {
                let task = TaskModel(taskName: task, taskCellColor: .white)
                saveTaskDeleagate?.saveTask(task: task)
                dismiss(animated: true, completion: nil)
            }
        }
    }
}
