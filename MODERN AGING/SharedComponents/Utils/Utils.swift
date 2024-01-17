//
//  Utils.swift
//  MODERN AGING
//
//  Created by ABC on 16/01/24.
//

import Foundation
import UIKit

class Utils {
    static func getDataFromMockJson(_ name: String)-> Data? {
        if let path = Bundle.main.path(forResource: name, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                return (data)
            } catch {
                // handle error
            }
        }
        return nil
    }
}
