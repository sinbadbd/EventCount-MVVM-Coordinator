//
//  Navigation + Extension.swift
//  Navigation + Extension
//
//  Created by Imran on 13/8/21.
//

import Foundation
import UIKit

extension UIViewController {
    static func instantiate<T>() -> T {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(withIdentifier: "\(T.self)") as! T
        return controller
    }
}
