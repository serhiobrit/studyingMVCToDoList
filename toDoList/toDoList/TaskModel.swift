//
//  TaskModel.swift
//  toDoList
//
//  Created by Serhio Brit on 09.01.2021.
//

import Foundation
import UIKit

// модель MVC -- здесь хранится структура как имитация данных на сервере

struct TaskModel {
    var taskName: String
    var taskCellColor: UIColor
    var currentIndex: IndexPath?
}
