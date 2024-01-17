//
//  MACoachingViewTests.swift
//  MODERN AGING
//
//  Created by ABC on 16/01/24.
//

import Foundation
import XCTest
@testable import MODERN_AGING

class MACoachingViewTests: XCTestCase {
    
    var viewModel: MACoachingViewModel!
    var viewController: MACoachingViewController!
    
    override func setUp() {
        super.setUp()
        viewModel = MACoachingViewModel()
        viewController = MACoachingViewController()
    }
    
    override func tearDown() {
        viewModel = nil
        viewController = nil
        super.tearDown()
    }
    
    // Test case for checking the number of rows
    func testNumberOfRows() {
        let numberOfItems = viewModel.rows(at: 0)
        XCTAssertEqual(numberOfItems, viewModel.coachingItems.count, "Number of rows should match the number of coaching items")
    }
    
    // Test case for checking the content of the coaching items
    func testCoachingItemsContent() {
        let coachingItems = viewModel.coachingItems
        XCTAssertEqual(coachingItems.count, 4, "Number of coaching items should be 4")
        XCTAssertEqual(coachingItems[0].title, .LikedArticles, "First coaching item should have title Liked Articles")
        XCTAssertEqual(coachingItems[1].title, .LikedTips, "Second coaching item should have title Liked Tips")
        XCTAssertEqual(coachingItems[2].title, .StrengtheningActivities, "Third coaching item should have title Strengthening Activities")
        XCTAssertEqual(coachingItems[3].title, .Profile, "Fourth coaching item should have title Profile")
    }
    
    // Test case for checking if the rows method handles different sections
    func testRowsForDifferentSections() {
        let section = 0
        let numberOfItems = viewModel.rows(at: section)
        XCTAssertEqual(numberOfItems, 4, "Number of rows for section \(section) should be 0")
    }
    
    // Test case for checking if the view model can be initialized
    func testViewModelInitialization() {
        XCTAssertNotNil(viewModel, "ViewModel should be initialized")
        XCTAssertEqual(viewModel.coachingItems.count, 4, "ViewModel should have 4 coaching items after initialization")
    }
    
  //MARK: - Test case for MACoachingViewController
    func testInitialState() {
           XCTAssertNotNil(viewController.viewModel, "viewModel should not be nil")
       }
    
    // Test case for verifying that the viewController.view is not nil
    func testTableViewConfiguration() {
        XCTAssertNotNil(viewController.view, "View should not be nil")
    }
}
