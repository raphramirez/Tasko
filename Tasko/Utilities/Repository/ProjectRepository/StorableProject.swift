//
//  StorableProject.swift
//  Tasko
//
//  Created by Raphael Ramirez on 10/30/22.
//

import Foundation
import RealmSwift

enum StorableProjectStatus: String, PersistableEnum {
    case InProgress
    case Completed
    case OnHold
}

extension Project: Entity {
    private var storableProject: StorableProject {
        let realmProject = StorableProject()
        
        return realmProject
    }
    
    func toStorable() -> StorableProject {
        return storableProject
    }
}

class StorableProject: Object, Storable {
    @Persisted(primaryKey: true) var uuid: String
    
    @Persisted var title: String
    @Persisted var status: StorableProjectStatus
    @Persisted var dateCreated: Date
    
    @Persisted var lead: StorableProfile
    @Persisted var members = List<StorableProfile>()
    
    var model: Project {
        get {
            return Project(title: title, lead: lead.model)
        }
    }
}
