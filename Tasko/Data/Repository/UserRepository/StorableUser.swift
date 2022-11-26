//
//  User.swift
//  Tasko
//
//  Created by Raphael Ramirez on 10/30/22.
//

import UIKit
import RealmSwift

extension User: Entity {
    private var storableUser: StorableUser {
        let realmUser = StorableUser()
        realmUser.firstName = firstName
        realmUser.middleName = middleName
        realmUser.lastName = lastName
        realmUser.uuid = lastName
        
        let storableProjects = projects.compactMap { $0.toStorable() }
        realmUser.projects.append(objectsIn: storableProjects)
        
        return realmUser
    }
    
    func toStorable() -> StorableUser {
        return storableUser
    }
}

class StorableUser: Object, Storable {
    @Persisted(primaryKey: true) var uuid: String
    @Persisted var firstName: String
    @Persisted var middleName: String
    @Persisted var lastName: String
    @Persisted var avatarColor: Int
    
    @Persisted var projects: List<StorableProject>
    
    var model: User {
        get {
            return User(
                firstName: firstName,
                middleName: middleName,
                lastName: lastName,
                avatarColor: UIColor(rgb: avatarColor),
                projects: Array(_immutableCocoaArray: projects))
        }
    }
}
