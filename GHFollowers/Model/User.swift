//
//  User.swift
//  GHFollowers
//
//  Created by Flávio Arêas on 06/12/24.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var followers: Int
    var createdAt: String
}
