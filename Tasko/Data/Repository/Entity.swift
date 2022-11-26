//
//  Entity.swift
//  Tasko
//
//  Created by Raphael Ramirez on 10/30/22.
//

import Foundation

protocol Entity {
    associatedtype StoreType: Storable
    
    func toStorable() -> StoreType
}
