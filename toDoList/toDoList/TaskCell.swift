//
//  TaskCell.swift
//  toDoList
//
//  Created by Serhio Brit on 08.01.2021.
//

import UIKit

// класс описывает секцию с таской

class TaskCell: UITableViewCell {
    
    @IBOutlet weak var viewCell: UIView!
    @IBOutlet weak var someTask: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    // кнопка с галочкой "отметить как выполненное" -- пока только запись в лог
    @IBAction func executeTaskBtnPressed(_ sender: Any) {
        print("remove")
    }
    
    // кнопка с удалением таски "удалить" -- пока только запись в лог
    @IBAction func removeTaskBtnPressed(_ sender: Any) {
        print("execute")
    }
    
    func cellData(task: TaskModel) {
        someTask.text = task.taskName
        viewCell.backgroundColor = task.taskCellColor
    }
    
    
}
