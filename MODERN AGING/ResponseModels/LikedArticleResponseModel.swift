//
//  File.swift
//  MODERN AGING
//
//  Created by ABC on 16/01/24.
//

import Foundation

// MARK: - LikedArticleResponseModel
struct LikedArticleResponseModel: Codable {
    var status: String?
    var statusCode: Int?
    var articlesData: [Articles]
}

// MARK: - ArticlesDatum
struct Articles: Codable {
    var articleID, articleTitle, articleLink, articleBanner: String?
    var isLiked: Bool?
    var categories: [Category]?

    enum CodingKeys: String, CodingKey {
        case articleID
        case articleTitle, articleLink, articleBanner, isLiked, categories
    }
}

// MARK: - Category
struct Category: Codable {
    var categotriesID: Int?
    var categotriesTitle: String?

    enum CodingKeys: String, CodingKey {
        case categotriesID
        case categotriesTitle
    }
}
