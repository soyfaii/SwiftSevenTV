//
//  EmoteData.swift
//  SwiftSevenTV
//
//  Created by Lucas Rubio on 14/6/25.
//

import Foundation

public struct EmoteData: Decodable {
    public let id: String
    public let name: String
    public let flags: Int
    public let lifecycle: Int
    public let state: [EmoteState]
    public let listed: Bool
    public let animated: Bool
    public let owner: ConcreteUserProfile?
    public let host: EmoteHost
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case flags
        case lifecycle
        case state
        case listed
        case animated
        case owner
        case host
    }
}
