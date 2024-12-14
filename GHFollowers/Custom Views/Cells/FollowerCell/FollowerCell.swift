//
//  FollowerCell.swift
//  GHFollowers
//
//  Created by Flávio Arêas on 07/12/24.
//

import UIKit
import SwiftUI

class FollowerCell: UICollectionViewCell {
    
    static let reuseID = "FollowerCell"
    let avatarImageView = GFAvatarImageView(frame: .zero)
    let usernameLabel = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower: Follower) {
        if #available(iOS 16.0, *){
            contentConfiguration = UIHostingConfiguration {
                FollowerView(follower: follower)
            }
        } else {
            usernameLabel.text = follower.login
            
            Task {
                avatarImageView.image = await NetworkManager.shared.downloadImage(from: follower.avatarUrl)
            }
        }
        
//        NetworkManager.shared.downloadImage(from: follower.avatarUrl) { [weak self] image in
//            guard let self = self else { return }
//            
//            DispatchQueue.main.async {
//                self.avatarImageView.image = image
//            }
//        }
    }
    
    private func configure() {
        addSubviews(avatarImageView, usernameLabel)
        
        let padding: CGFloat = 8
        
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: padding),
            avatarImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            avatarImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
            
            usernameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 12),
            usernameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            usernameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}
