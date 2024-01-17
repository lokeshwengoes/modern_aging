//
//  m.swift
//  MODERN AGING
//
//  Created by ABC on 16/01/24.
//

import Foundation
import Combine
import OSLog

final class MALikedArticleViewModel {
    @Published var likeArticleData: [Articles] = []
    
    init() {
        self.getLikedArticleData()
    }
    
    func getLikedArticleData() {
        let data = Utils.getDataFromMockJson("LikedArticles")
        do {
            if let data {
                let responseModel = try JSONDecoder().decode(LikedArticleResponseModel.self, from: data)
                if responseModel.statusCode == 1{
                    self.likeArticleData = responseModel.articlesData
                } else {
                    os_log("Error: %@", log: .default, type: .error, String(describing: responseModel.status ?? ""))
                }
            }
        } catch {
            os_log("Error: %@", log: .default, type: .error, String(describing: error))
        }
        
    }
}
