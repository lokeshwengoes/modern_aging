//
//  MACoachingTableView.swift
//  MODERN AGING
//
//  Created by ABC on 16/01/24.
//

import Foundation
import UIKit

class MACoachingTableView: UITableView {
    var viewModel =  MACoachingViewModel()
    var didSelectItemAt: ((MACoachingItem) -> Void)?

    override func awakeFromNib() {
        super.awakeFromNib()
        self.setup()
    }
    
    private func setup() {
        self.delegate = self
        self.dataSource = self
        self.registerCell(MACoachingTableViewCell.self, in: nil)
    }
    
    func configureWith(_ viewModel: MACoachingViewModel) {
        self.viewModel = viewModel
        self.reloadData()
        self.isScrollEnabled =  self.contentSize.height > self.frame.size.height
    }
}

// MARK: - Dstasource and Delegate
extension MACoachingTableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.viewModel.coachingItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.dequeueReusableCell(MACoachingTableViewCell.self)
         cell.configure(viewModel.coachingItems[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.didSelectItemAt?(viewModel.coachingItems[indexPath.row])
    }
}
