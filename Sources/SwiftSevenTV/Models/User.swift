//
//  User.swift
//  SwiftSevenTV
//
//  Created by Lucas Rubio on 14/6/25.
//

import Foundation

public struct User: UserProfile, Decodable {
    public var id: String
    public var username: String
    public var displayName: String
    public var avatarUrl: String?
    public var roles: [String]?
    public let biography: String?
    public let connections: [Connection]
    
    enum CodingKeys: String, CodingKey {
        case id
        case username
        case displayName = "display_name"
        case avatarUrl = "avatar_url"
        case roles
        case biography
        case connections
    }
}
