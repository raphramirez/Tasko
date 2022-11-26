//
//  Project.swift
//  Tasko
//
//  Created by Raphael Ramirez on 9/29/22.
//

import Foundation

enum ProjectStatus: String {
    case InProgress
    case Completed
    case OnHold
}

struct Project {
    var title: String
    var dateCreated: Date
    var status: ProjectStatus
    var leadId: String
    
    init(title: String, leadId: String) {
        self.title = title
        self.leadId = leadId
        
        self.dateCreated = Date()
        self.status = .InProgress
    }
}
