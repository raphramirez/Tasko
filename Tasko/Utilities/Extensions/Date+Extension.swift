//
//  Date+Extensions.swift
//  Tasko
//
//  Created by Raphael Ramirez on 9/29/22.
//

import Foundation

extension Date {
    func from(string: String, format: String? = "MM-dd-yyyy") -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        
        if let date = formatter.date(from: string) {
            return date
        }
        
        return nil
    }
    
    func format(to format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        
        return formatter.string(from: self)
    }
}
