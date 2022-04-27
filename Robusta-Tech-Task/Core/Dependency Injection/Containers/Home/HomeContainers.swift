//
//  HomeContainers.swift
//  RobustaTechTask
//
//  Created by ibrahim nabil on 27/04/2022.
//

import Foundation

extension Resolver {
    static func registerHomeContainers() {
        register { RepositoriesUseCase() }
        register { HomeViewController() }
        register { HomePresenter() }
    }
}

