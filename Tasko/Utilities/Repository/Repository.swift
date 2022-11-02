//
//  Repository.swift
//  Tasko
//
//  Created by Raphael Ramirez on 10/30/22.
//

import Foundation

protocol Repository {
    associatedtype EntityObject: Entity
    
    // Read
    func getAll(where predicate: NSPredicate?) -> [EntityObject]
    func get(identifier: String) throws -> EntityObject?
    
    // Write
    func insert(_ item: EntityObject) throws -> EntityObject?
    func update(_ item: EntityObject) throws -> EntityObject?
    func delete(_ item: EntityObject) throws -> Void
}

extension Repository {
    func getAll() -> [EntityObject] {
        return getAll(where: nil)
    }
}
