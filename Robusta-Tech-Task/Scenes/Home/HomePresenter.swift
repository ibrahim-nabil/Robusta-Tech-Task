//
//  HomePresenter.swift
//  RobustaTechTask
//
//  Created by ibrahim nabil on 27/04/2022.
//

import Foundation

class HomePresenter: BasePresenter<HomeView> {
    //MARK:- Vars
    var expandedCell = [Int]()
    var repositories = [Repositories]()
    var filterdRepo = [Repositories]()
    @Injected var useCase: RepositoriesUseCase
    //MARK:- Life Cycle
    override func viewDidAttach() {
        expandedCell = [0]
        getRepositories()
    }
    //MARK:- tableView Methods
    func numberOfRows(at section: Int ) -> Int {
        filterdRepo.count
    }
    
    func numberOfSections() -> Int {
        return 1
    }
    
    func isCellExpanded(at indexPath: IndexPath) -> Bool {
        expandedCell.contains(indexPath.row)
    }
    
    func cellArrowTapped(at indexPath: IndexPath) {
        handleCellsExpansion(indexPath: indexPath)
        self.view.reloadTableView(at: [indexPath])
    }
    
    private func handleCellsExpansion(indexPath: IndexPath) {
        if expandedCell.contains(indexPath.row) {
            expandedCell.removeAll(where: {$0 == indexPath.row})
            return
        }
        expandedCell.append(indexPath.row)
    }
    
    func repositoriesData(at indexPath: IndexPath) -> Repositories {
        filterdRepo[indexPath.row]
    }
    //MARK: - fetchRepositoriesData
    private func getRepositories() {
        self.view.showLoader()
        useCase.getFeed(from: .currenRpos) { [weak self] result in
            guard let self = self else { return }
            self.view.hideLoader()
            switch result {
            case .success(let reposResult):
                self.repositories = reposResult
                self.filterdRepo = reposResult
                self.view.reloadTableView()
            case .failure(let error):
                print(error)
                self.view.hideLoader()
            }
        }
    }
    
}
