//
//  NSMutableAttributedString+Extension.swift
//  Tasko
//
//  Created by Raphael Ramirez on 8/29/22.
//

import Foundation

extension NSMutableAttributedString {

    public func setAsLink(textToFind: String, linkURL: String) -> Bool {

        let foundRange = self.mutableString.range(of: textToFind)
        if foundRange.location != NSNotFound {
            self.addAttribute(.link, value: linkURL, range: foundRange)
            return true
        }
        return false
    }
}
