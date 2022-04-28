//
//  TestHomePresenter.swift
//  Robusta-Tech-TaskTests
//
//  Created by ibrahim nabil on 28/04/2022.
//

import Foundation
import XCTest
import Cuckoo
class TestHomePresenter: XCTestCase{
    func testGetRepositoriesSucess() {
        let mockRepositoriesUseCase = MockRepositoriesUseCase()
        let presenter = HomePresenter()
        let expectedResult = [Repositories(id: 1, name: "giter", owner: Owner(login: "ibrahim", id: 1, avatarURL: "", followingURL: "", gistsURL: "", starredURL: "", subscriptionsURL: "", organizationsURL: "", reposURL: "", eventsURL: "", receivedEventsURL: "", siteAdmin: true), description: "")]
        
        stub(mockRepositoriesUseCase){ stub in
            when(stub.getFeed(from: any(), completion: any())).then({ (_, complete) in
                complete(.success(expectedResult))
            })
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            XCTAssertEqual(presenter.repositories, expectedResult)
            XCTAssertEqual(presenter.filterdRepo, expectedResult)
        }

        XCTAssertTrue((presenter.numberOfSections() == 1))
        XCTAssertTrue(presenter.numberOfRows(at: 1) == presenter.repositories.count)
        XCTAssertFalse(presenter.isCellExpanded(at: IndexPath(row: 0, section: 1)))
    }
    
    func testGetRepositoriesFailed() {
        let mockRepositoriesUseCase = MockRepositoriesUseCase()
        let presenter = HomePresenter()
        
        stub(mockRepositoriesUseCase){ stub in
            when(stub.getFeed(from: any(), completion: any())).then({ (_, complete) in
                complete(.failure(.jsonConversionFailure))
            })
        }
        XCTAssertTrue((presenter.numberOfSections() == 1))
        XCTAssertEqual(presenter.repositories, [])
        XCTAssertTrue(presenter.numberOfRows(at: 1) == presenter.repositories.count)
    }
    
    func testUiImageExtension() {
        let image = UIImageView()
        image.downloadImage(from: URL(string: "https://avatars.githubusercontent.com/u/1?v=4")!)
        XCTAssertNotNil(image)
    }
    
    func testUiViewEExtension() {
        let view = UIView()
        view.makeCircular()
    }
}
