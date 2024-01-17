//
//  MALikedArticlesTableView.swift
//  MODERN AGING
//
//  Created by ABC on 16/01/24.
//

import UIKit

class MALikedArticlesTableView: UITableView {
    var viewModel: MALikedArticleViewModel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setup()
    }
    
    private func setup() {
        self.delegate = self
        self.dataSource = self
        self.registerCell(MALikedArticleTableViewCell.self, in: nil)
    }
    
    func configureWith(_ viewModel: MALikedArticleViewModel) {
        self.viewModel = viewModel
        self.reloadData()
        self.isScrollEnabled = true//self.contentSize.height > self.frame.height
    }
}

// MARK: - Dstasource and Delegate
extension MALikedArticlesTableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.likeArticleData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.dequeueReusableCell(MALikedArticleTableViewCell.self)
        cell.lblTitle.text = viewModel.likeArticleData[indexPath.row].articleTitle
        return cell
    }
}
