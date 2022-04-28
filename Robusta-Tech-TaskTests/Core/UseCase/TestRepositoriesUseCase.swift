//
//  TestRepositoriesUseCase.swift
//  Robusta-Tech-TaskTests
//
//  Created by ibrahim nabil on 27/04/2022.
//

import Foundation
import XCTest
import Cuckoo
@testable import Robusta_Tech_Task
class TestWeightWatcherRepository: XCTestCase{
    func testGetListOfRepoSucess() {
        let mockApiClient = MockAPIClient()
        let repositoriesUseCase = RepositoriesUseCase()
        let expectedResult = [Repositories(id: 1, name: "giter", owner: Owner(login: "ibrahim", id: 1, avatarURL: "", followingURL: "", gistsURL: "", starredURL: "", subscriptionsURL: "", organizationsURL: "", reposURL: "", eventsURL: "", receivedEventsURL: "", siteAdmin: true), description: "")]

        stub(mockApiClient) { stub in
            when(stub.fetch(with: any(), decode: any(), completion: any())).then({ (_, _, complete) in
                complete(.success(expectedResult))
            })
        }
        repositoriesUseCase.getFeed(from: .currenRpos) { result in
            switch result {
            case .success(let reposResult):
               XCTAssertEqual(reposResult, expectedResult)
            case .failure(_):
               break
            }
        }
    }
}

