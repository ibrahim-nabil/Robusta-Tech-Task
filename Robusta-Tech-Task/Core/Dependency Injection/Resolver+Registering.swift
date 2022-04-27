//
//  Resolver+Registering.swift
//  RobustaTechTask
//
//  Created by ibrahim nabil on 27/04/2022.
//

import Foundation
extension Resolver: ResolverRegistering {
    
    public static func registerAllServices() {
        registerHomeContainers()
        registerReposContainers()
    }
}
