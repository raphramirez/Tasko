//
//  StorableProfile.swift
//  Tasko
//
//  Created by Raphael Ramirez on 10/30/22.
//

import UIKit
import RealmSwift

class StorableProfile: EmbeddedObject {
    @Persisted var firstName: String
    @Persisted var middleName: String
    @Persisted var lastName: String
    @Persisted var avatarColor: Int
    
    var model: Profile {
        get {
            return Profile(
                firstName: firstName,
                middleName: middleName,
                lastName: lastName,
                avatarColor: UIColor(rgb: avatarColor))
        }
    }
}
