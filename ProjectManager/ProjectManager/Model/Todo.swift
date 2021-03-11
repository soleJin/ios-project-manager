//
//  Todo.swift
//  ProjectManager
//
//  Created by sole on 2021/03/09.
//

import Foundation

enum Status {
    static let todo: String = "TODO"
    static let doing: String = "DOING"
    static let done: String = "DONE"
}

struct Todo {
    var title: String
    var description: String?
    var deadLine: Date?
}

