//
//  UIView+Extension.swift
//  Tasko
//
//  Created by Raphael Ramirez on 9/29/22.
//

import UIKit

extension UIView {
    func makeRounded() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}
