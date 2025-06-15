//
//  EmoteState.swift
//  SwiftSevenTV
//
//  Created by Lucas Rubio on 14/6/25.
//

import Foundation

public enum EmoteState: String, Decodable {
    case personal = "PERSONAL"
    case listed = "LISTED"
    case noPersonal = "NO_PERSONAL"
}
