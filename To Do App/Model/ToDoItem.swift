//
//  ToDoItem.swift
//  To Do App
//
//  Created by Memory Mhou on 23/03/2024.
//

import Foundation

struct ToDoItem: Codable {
    var name: String
    var date:  Date
    var notes: String
    var reminderSet: Bool
}
