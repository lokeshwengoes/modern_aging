//
//  MALikedArticleTableViewCell.swift
//  MODERN AGING
//
//  Created by ABC on 16/01/24.
//

import UIKit

class MALikedArticleTableViewCell: UITableViewCell, NibLoadableView, ReusableView {
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
