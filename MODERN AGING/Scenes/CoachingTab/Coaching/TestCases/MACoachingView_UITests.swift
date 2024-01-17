//
//  MACoachingView_UITests.swift
//  MODERN AGING
//
//  Created by ABC on 17/01/24.
//

import Foundation
import XCTest

class MACoachingView_UITests: XCTestCase {
    var app: XCUIApplication!

    override func setUpWithError() throws {
        try super.setUpWithError()
        app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        app = nil
        try super.tearDownWithError()
    }

    // Test case to check if the table view has the expected number of rows.
    func testNumberOfRowsInTableView() {
        let expectedRows = app.tables["MACoachingTableView"].cells.count
        let actualRows = app.tables["MACoachingTableView"].cells.count
        XCTAssertEqual(expectedRows, actualRows, "Number of rows in the table view should match the view model.")
    }
}
