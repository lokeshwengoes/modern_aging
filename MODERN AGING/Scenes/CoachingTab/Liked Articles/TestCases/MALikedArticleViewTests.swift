//
//  MALikedArticleViewTests.swift
//  MODERN AGINGTests
//
//  Created by ABC on 17/01/24.
//

import XCTest

final class MALikedArticleViewTests: XCTestCase {
    
    func testInitialLikeArticleDataIsEmpty() {
        let viewModel = MALikedArticleViewModel()
        XCTAssertTrue(!viewModel.likeArticleData.isEmpty, "Initially, likeArticleData should be empty.")
    }
    
    func testGetLikedArticleDataSuccess() {
        let viewModel = MALikedArticleViewModel()
        viewModel.getLikedArticleData()
        
        XCTAssertFalse(viewModel.likeArticleData.isEmpty, "LikeArticleData should not be empty after a successful API call.")
    }
    
    func testGetLikedArticleDataFailure() {
        let viewModel = MALikedArticleViewModel()
        viewModel.getLikedArticleData()

        XCTAssertTrue(viewModel.likeArticleData.isEmpty, "LikeArticleData should be empty after a failed API call.")
    }
}
