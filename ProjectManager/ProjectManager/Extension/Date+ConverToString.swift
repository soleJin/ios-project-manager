//
//  Date+ConverToString.swift
//  ProjectManager
//
//  Created by sole on 2021/03/09.
//

import Foundation

extension Date {
    var toString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = .autoupdatingCurrent
        dateFormatter.dateFormat = "yyyy. M. d."
        return dateFormatter.string(from: self)
    }
}
