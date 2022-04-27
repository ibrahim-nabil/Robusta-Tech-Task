//
//  HomeViewController.swift
//  RobustaTechTask
//
//  Created by ibrahim nabil on 27/04/2022.
//

import Foundation
import UIKit

protocol HomeView: BaseViewProtocol {
    func reloadTableView()
    func reloadTableView(at indexPaths: [IndexPath])
}
class HomeViewController: BaseVC<HomeView, HomePresenter>, HomeView {
    
    //MARK:- Outlets
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    //MARK:- Life Cycle
    override func setupViews() {
        hideNavigationBar()
        setupTableView()
    }
    
    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        searchBar.delegate = self
        tableView.contentInset = .zero
        tableView.separatorStyle = .none
        tableView.register(cellType: RepositoriesCell.self)
    }
    //MARK:- HomeView Protocol
    func reloadTableView() {
        tableView.reloadData()
    }
    func reloadTableView(at indexPaths: [IndexPath]) {
        tableView.reloadRows(at: indexPaths, with: .fade)
    }
}
//MARK:- UITableViewDataSource
extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter.numberOfRows(at: section)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        presenter.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: RepositoriesCell = tableView.dequeueReusableCell(for: indexPath)
        cell.delegate = self
        let repos = presenter.repositoriesData(at: indexPath)
        cell.configure(repo: repos, isExpanded: presenter.isCellExpanded(at: indexPath))
        return cell
    }
}
//MARK:- UITableViewDelegate
extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let args = presenter.repositoriesData(at: indexPath)
        let repositoriesVC: RepositoriesVC = Resolver.resolve(args: args)
        self.presentVC(repositoriesVC)
    }
}

extension HomeViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.count >= 2 {
            presenter.filterdRepo = searchText.isEmpty ? presenter.repositories : presenter.repositories.filter({ (repo: Repositories) -> Bool in
                return repo.name?.range(of: searchText, options: .caseInsensitive) != nil
            })

            tableView.reloadData()
        } else {
            presenter.filterdRepo = presenter.repositories
            tableView.reloadData()
        }
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
}


//MARK:- RepositoriesCellDelegate
extension HomeViewController: RepositoriesCellDelegate {
    func repoCellArrowTapped(cell: RepositoriesCell) {
        if let indexpath = tableView.indexPath(for: cell) {
            presenter.cellArrowTapped(at: indexpath)
        }
    }
}
