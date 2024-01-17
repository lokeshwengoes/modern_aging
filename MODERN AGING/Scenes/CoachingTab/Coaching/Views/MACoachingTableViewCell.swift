//
//  MACoachingTableViewCell.swift
//  MODERN AGING
//
//  Created by ABC on 16/01/24.
//

import UIKit

class MACoachingTableViewCell: UITableViewCell, NibLoadableView, ReusableView {
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imgIcon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(_ item: MACoachingItem){
        self.lblTitle.text = item.title.rawValue
        self.imgIcon.image = UIImage(systemName: item.image)
    }
}
