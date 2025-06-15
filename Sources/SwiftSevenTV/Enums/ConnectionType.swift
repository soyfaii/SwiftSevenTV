//
//  ConnectionType.swift
//  SwiftSevenTV
//
//  Created by Lucas Rubio on 14/6/25.
//

import Foundation

public enum ConnectionType: String, Decodable {
    case discord = "DISCORD"
    case twitch = "TWITCH"
    case youtube = "YOUTUBE"
}
