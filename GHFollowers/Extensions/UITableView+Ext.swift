//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Flávio Arêas on 13/12/24.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
}
