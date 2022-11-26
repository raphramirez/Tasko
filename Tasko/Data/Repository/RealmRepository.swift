//
//  Persistence.swift
//  Tasko
//
//  Created by Raphael Ramirez on 10/30/22.
//

import Foundation
import RealmSwift

class RealmRepository<RepositoryObject>: Repository
                where RepositoryObject: Entity,
                RepositoryObject.StoreType: Object {
    
    typealias RealmObject = RepositoryObject.StoreType
    
    private let realm: Realm
    
    init() {
        // When you open the realm, specify that the schema
        // is now using a newer version.
        let config = Realm.Configuration(
            schemaVersion: 2)
        // Use this configuration when opening realms
        Realm.Configuration.defaultConfiguration = config
        
        realm = try! Realm()
    }
    
    func getAll(where predicate: NSPredicate?) -> [RepositoryObject] {
        var objects = realm.objects(RealmObject.self)

        if let predicate = predicate {
            objects = objects.filter(predicate)
        }
        
        return objects.compactMap{ ($0).model as? RepositoryObject }
    }
    
    func get(identifier: String) throws -> RepositoryObject? {
        let specificObject = realm.object(ofType: RealmObject.self, forPrimaryKey: identifier)
        
        return specificObject?.model as? RepositoryObject
    }
    
    func insert(_ item: RepositoryObject) throws -> RepositoryObject? {
        try realm.write {
            realm.add(item.toStorable())
            
            return item
        }
        
        return nil
    }
    
    func update(_ item: RepositoryObject) throws -> RepositoryObject? {
        try delete(item)
        return try insert(item)
    }
    
    func delete(_ item: RepositoryObject) throws {
        try realm.write {
            let predicate = NSPredicate(format: "uuid == %@", item.toStorable().uuid)
            if let productToDelete = realm.objects(RealmObject.self)
                .filter(predicate).first {
                realm.delete(productToDelete)
            }
        }
    }
}
