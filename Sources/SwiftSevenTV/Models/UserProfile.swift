//
//  UserProfile.swift
//  SwiftSevenTV
//
//  Created by Lucas Rubio on 14/6/25.
//

import Foundation

protocol UserProfile {
    var id: String { get }
    var username: String { get }
    var displayName: String { get }
    var avatarUrl: String? { get }
    var roles: [String]? { get }
}

public struct ConcreteUserProfile: UserProfile, Decodable {
    public let id: String
    public let username: String
    public let displayName: String
    public let avatarUrl: String?
    public let roles: [String]?
    
    enum CodingKeys: String, CodingKey {
        case id
        case username
        case displayName = "display_name"
        case avatarUrl = "avatar_url"
        case roles
    }
}
