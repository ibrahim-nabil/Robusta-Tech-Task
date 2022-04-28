//
//  TestRepositoriesPresenter.swift
//  Robusta-Tech-TaskTests
//
//  Created by ibrahim nabil on 28/04/2022.
//

import Foundation
import XCTest
import Cuckoo
class TestRepositoriesPresenter: XCTestCase{
    func testViewDidAttached() {
        let repoPresenter = RepositoriesPresenter()
        let expectedResult = Repositories(id: 1, name: "giter", owner: Owner(login: "ibrahim", id: 1, avatarURL: "", followingURL: "", gistsURL: "", starredURL: "", subscriptionsURL: "", organizationsURL: "", reposURL: "", eventsURL: "", receivedEventsURL: "", siteAdmin: true), description: "")
        repoPresenter.repoDetails = expectedResult
        XCTAssertEqual(expectedResult.name, repoPresenter.repoDetails.name)
        XCTAssertNotNil(repoPresenter.repoDetails.id)
        XCTAssertNotNil(repoPresenter.repoDetails.description)
    }
}
