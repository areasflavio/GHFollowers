//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Flávio Arêas on 13/12/24.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
