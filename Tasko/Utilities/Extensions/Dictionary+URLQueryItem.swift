//
//  Dictionary+URLQueryItem.swift
//  Tasko
//
//  Created by Raphael Ramirez on 8/29/22.
//

import Foundation

extension Dictionary {

    func toURLQueryItem() -> [URLQueryItem] {
        return self.map({
            guard let key = $0.key as? String, let value = $0.value as? String else {
                return nil
            }

            return URLQueryItem(name: key, value: value)
        }).compactMap({
            return $0
        })
    }
}

