//
//  FollowersListVC.swift
//  GHFollowers
//
//  Created by Flávio Arêas on 06/12/24.
//

import UIKit

class FollowersListVC: UIViewController {
    
    var username : String = "";

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}