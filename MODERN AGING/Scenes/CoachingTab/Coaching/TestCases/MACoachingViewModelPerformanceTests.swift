//
//  MACoachingViewModelPerformanceTests.swift
//  MODERN AGING
//
//  Created by ABC on 17/01/24.
//

import Foundation
import XCTest

class MACoachingViewModelPerformanceTests: XCTestCase {
    
    func testPerformanceOfConfigureTableItems() {
        let viewModel = MACoachingViewModel()
        // Measure the time it takes to configure table items
        measure {
            viewModel.configureTableItems()
        }
    }
    
    func testPerformanceOfInitialSetup() {
        let viewController = MACoachingViewController()
        
        // Measure the time it takes to execute the initial setup
        measure {
            viewController.initialSetup()
        }
    }
}
