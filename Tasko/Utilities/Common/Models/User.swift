//
//  User.swift
//  Tasko
//
//  Created by Raphael Ramirez on 10/30/22.
//

import UIKit

struct User {
    var firstName: String
    var middleName: String
    var lastName: String
    var avatarColor: UIColor
    
    private var userProfile: Profile {
        let profile = Profile(firstName: firstName, middleName: middleName, lastName: lastName, avatarColor: avatarColor)
        
        return profile
    }
    
    func toProfile() -> Profile {
        return userProfile
    }
}
