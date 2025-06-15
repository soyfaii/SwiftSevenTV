//
//  Emote.swift
//  SwiftSevenTV
//
//  Created by Lucas Rubio on 14/6/25.
//

import Foundation

public struct Emote: Decodable {
    public let id: String
    public let name: String
    public let flags: Int
    public let timestamp: Int
    public let actorId: String?
    public let data: EmoteData
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case flags
        case timestamp
        case actorId = "actor_id"
        case data
    }
    
    public var url: URL {
        return URL(string: "https://cdn.7tv.app/emote/\(self.id)/1x.webp")!
    }
    public var url2x: URL {
        return URL(string: "https://cdn.7tv.app/emote/\(self.id)/2x.webp")!
    }
}
