//
//  EmoteHostFile.swift
//  SwiftSevenTV
//
//  Created by Lucas Rubio on 14/6/25.
//

import Foundation

public struct EmoteHostFile: Decodable {
    public let name: String
    public let staticName: String
    public let width: Int
    public let height: Int
    public let frameCount: Int
    public let size: Int
    public let format: EmoteFormat
    
    enum CodingKeys: String, CodingKey {
        case name
        case staticName = "static_name"
        case width
        case height
        case frameCount = "frame_count"
        case size
        case format
    }
}
