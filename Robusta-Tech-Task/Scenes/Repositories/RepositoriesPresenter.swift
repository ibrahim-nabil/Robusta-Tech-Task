//
//  RepositoriesPresenter.swift
//  RobustaTechTask
//
//  Created by ibrahim nabil on 27/04/2022.
//

import Foundation

class RepositoriesPresenter: BasePresenter<RepositoriesView> {
    
    var repoDetails: Repositories!
    
    override func viewDidAttach() {
        self.view.showDetails(repo: repoDetails)
    }
}
