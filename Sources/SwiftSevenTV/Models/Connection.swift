//
//  Connection.swift
//  SwiftSevenTV
//
//  Created by Lucas Rubio on 14/6/25.
//

import Foundation

public struct Connection: Decodable {
    public let id: String
    public let platform: ConnectionType
    public let username: String
    public let displayName: String
    public let linkedAt: Int
    public let emoteCapacity: Int
    public let emoteSetId: String
    public let emoteSet: EmoteSet?
    public let user: User?
    
    enum CodingKeys: String, CodingKey {
        case id
        case platform
        case username
        case displayName = "display_name"
        case linkedAt = "linked_at"
        case emoteCapacity = "emote_capacity"
        case emoteSetId = "emote_set_id"
        case emoteSet = "emote_set"
        case user
    }
}
