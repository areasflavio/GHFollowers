//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by Flávio Arêas on 10/12/24.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgrounColor: .systemGreen, title: "Get Followers")
    }
}

