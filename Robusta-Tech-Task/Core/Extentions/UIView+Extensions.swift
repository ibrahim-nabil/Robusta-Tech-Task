//
//  UIView+Extensions.swift
//  RobustaTechTask
//
//  Created by ibrahim nabil on 27/04/2022.
//


import UIKit
extension UIView {
    func makeCircular() {
        self.layer.cornerRadius = min(self.frame.size.height, self.frame.size.width) / 2.0
        self.clipsToBounds = true
    }
}
