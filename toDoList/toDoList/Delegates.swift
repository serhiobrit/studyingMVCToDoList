//
//  Delegates.swift
//  toDoList
//
//  Created by Serhio Brit on 09.01.2021.
//

import Foundation

//weak var saveTaskDelegate: SaveUserTaskDelegate?

protocol SaveUserTaskDelegate: class {
    func saveTask(task: TaskModel)
}



