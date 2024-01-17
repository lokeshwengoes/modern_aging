//
//  MACoachingViewController.swift
//  MODERN AGING
//
//  Created by ABC on 16/01/24.
//

import UIKit

class MACoachingViewController: UIViewController {
    @IBOutlet weak var tableView: MACoachingTableView!
    var viewModel = MACoachingViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = MACoachingViewModel()
        self.initialSetup()
    }
}
//
// MARK: - Initial Setups
//
extension MACoachingViewController {
    func initialSetup(){
        guard self.tableView != nil else {
            return
        }
        self.tableView.configureWith(viewModel)
        self.tableView.didSelectItemAt = { [weak self] selectedItem in
            self?.manageNavigation(selectedItem)
        }
    }
    
    func manageNavigation(_ item: MACoachingItem){
        switch item.title {
        case .LikedArticles:
            let view = StoryBoard.MACoaching.viewController(MALikedArticleViewController.self)
            self.navigationController?.pushViewController(view, animated: true)
        case .LikedTips:
            print("LikedTips")
        case .StrengtheningActivities:
            print("StrengtheningActivities")
        case .Profile:
            print("Profile")
        }
    }
}

