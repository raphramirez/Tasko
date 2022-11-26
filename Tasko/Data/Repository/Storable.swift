//
//  Storable.swift
//  Tasko
//
//  Created by Raphael Ramirez on 10/30/22.
//

import Foundation

protocol Storable {
    associatedtype EntityObject: Entity
    
    var uuid: String { get }
    var model: EntityObject { get }
}
