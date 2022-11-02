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
    
    var lead: Profile
    var members: [Profile] = []
    
    init(title: String, lead: Profile) {
        self.title = title
        self.lead = lead
        
        self.dateCreated = Date()
        self.status = .InProgress
    }
}
