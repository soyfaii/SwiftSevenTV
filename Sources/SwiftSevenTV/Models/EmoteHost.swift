//
//  EmoteHost.swift
//  SwiftSevenTV
//
//  Created by Lucas Rubio on 14/6/25.
//

import Foundation

public struct EmoteHost: Decodable {
    public let url: String
    public let files: [EmoteHostFile]
    
    enum CodingKeys: String, CodingKey {
        case url
        case files
    }
}
