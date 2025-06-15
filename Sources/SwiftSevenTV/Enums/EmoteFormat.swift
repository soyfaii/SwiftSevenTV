//
//  EmoteFormat.swift
//  SwiftSevenTV
//
//  Created by Lucas Rubio on 14/6/25.
//

import Foundation

public enum EmoteFormat: String, Decodable {
    case avif = "AVIF"
    case webp = "WEBP"
    case png = "PNG"
    case gif = "GIF"
}
