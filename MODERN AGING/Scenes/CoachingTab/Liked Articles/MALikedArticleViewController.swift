//
//  MALikedArticleViewController.swift
//  MODERN AGING
//
//  Created by ABC on 16/01/24.
//

import UIKit
import Combine

class MALikedArticleViewController: UIViewController {
    @IBOutlet weak var tableView: MALikedArticlesTableView!
    var viewModel = MALikedArticleViewModel()
    lazy var observers = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialSetup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
}

//
// MARK: - Initial Setups
//
extension MALikedArticleViewController {
    private func initialSetup(){
        self.tableView.configureWith(viewModel)
    }
    
    private func subscribeToViewModel() {
        viewModel.$likeArticleData
            .sink{ [weak self] _ in
                self?.initialSetup()
            }.store(in: &observers)
    }
}
