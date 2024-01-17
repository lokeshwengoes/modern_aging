//
//  UITableView+Extension.swift
//  MODERN AGING
//
//  Created by ABC on 16/01/24.
//

import Foundation
import UIKit

public extension UITableView {
    func registerCell<T: UITableViewCell>(_: T.Type, in bundle: Bundle? = nil) where T: ReusableView, T: NibLoadableView {
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        register(nib, forCellReuseIdentifier: T.reuseIdentity)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(_: T.Type) -> T where T: ReusableView {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentity) as? T else {
            return UITableViewCell() as! T
        }
        return cell
    }
}
