//
//  EmoteSet.swift
//  SwiftSevenTV
//
//  Created by Lucas Rubio on 14/6/25.
//

import Foundation

public struct EmoteSet: Decodable {
    public let id: String
    public let name: String
    public let flags: Int
    public let tags: [String]
    public let immutable: Bool
    public let privileged: Bool
    public let emotes: [Emote]?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case flags
        case tags
        case immutable
        case privileged
        case emotes
    }
}
