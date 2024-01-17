//
//  MACoachingViewModel.swift
//  MODERN AGING
//
//  Created by ABC on 16/01/24.
//

import Foundation
struct MACoachingItem {
    var image: String
    var title: MACoachingTitle
}
enum MACoachingTitle: String {
    case LikedArticles = "Liked Articles"
    case LikedTips = "Liked Tips"
    case StrengtheningActivities = "Strengthening Activities"
    case Profile = "Profile"
}


final class MACoachingViewModel {
    var coachingItems: [MACoachingItem] = []
    
    init() {
        self.configureTableItems()
    }
    
    deinit {
        coachingItems.removeAll()
    }
    
    func rows(at: Int) -> Int{
        return coachingItems.count
    }
    
    func configureTableItems() {
        self.coachingItems = [MACoachingItem(image: "note.text.badge.plus",
                                             title: .LikedArticles),
                              MACoachingItem(image: "tag.fill",
                                             title: .LikedTips),
                              MACoachingItem(image: "figure.run",
                                             title: .StrengtheningActivities),
                              MACoachingItem(image: "rectangle.inset.filled.and.person.filled",
                                             title: .Profile)]}
}

