//
//  NSObject+Extension.swift
//  RobustaTechTask
//
//  Created by ibrahim nabil on 27/04/2022.
//

import Foundation

extension NSObject {
    /// value that represent a className as string value
    static var className: String {
        return String(describing: self)
    }
}
