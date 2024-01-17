//
//  StoryBoard.swift
//  MODERN AGING
//
//  Created by ABC on 16/01/24.
//

import Foundation
import UIKit

struct StoryBoard {
    static let MAMain = UIStoryboard.init(name: "Main", bundle: nil)
    static let MACoaching = UIStoryboard.init(name: "MACoaching", bundle: nil)
}

enum Storyboard: String {
    case main = "Main"
    case coaching = "MACoaching"
}

extension UIStoryboard {
    func viewController<T: UIViewController>(_ controller: T.Type) -> T {
        return instantiateViewController(withIdentifier: String(describing: controller)) as! T
    }
}
