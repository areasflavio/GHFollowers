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
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
