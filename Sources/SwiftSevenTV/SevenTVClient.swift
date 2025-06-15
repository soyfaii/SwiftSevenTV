//
//  SwiftSevenTV.swift
//  SwiftSevenTV
//
//  Created by Lucas Rubio on 14/6/25.
//

import Foundation

struct ApiResponse<T: Decodable>: Decodable {
    let data: T
    let status: Int
}

struct ApiError: Decodable, Error {
    let statusCode: Int;
    let status: String;
    let error: String;
    let errorCode: Int;
}

public struct SevenTVClient {
    private let endpoint: URL = URL(string: "https://7tv.io/v3/")!
    
    public init() {}
    
    public func apiGet(path: String, headers: [String: String] = [:]) async throws -> (data: Any, status: Int) {
        var headers = headers
        if headers["X-7TV-Client"] == nil {
            headers["X-7TV-Client"] = "7tv-api (swift)"
        }

        let url = endpoint.appendingPathComponent(path)

        var request = URLRequest(url: url)
        for (key, value) in headers {
            request.setValue(value, forHTTPHeaderField: key)
        }

        let (data, response) = try await URLSession.shared.data(for: request)

        guard let httpResponse = response as? HTTPURLResponse else {
            throw URLError(.badServerResponse)
        }

        let json = try JSONSerialization.jsonObject(with: data, options: [])

        return (json, httpResponse.statusCode)
    }
    
    private func decode<T: Decodable>(_ type: T.Type, from anyData: Any) throws -> T {
        let jsonData = try JSONSerialization.data(withJSONObject: anyData)
        return try JSONDecoder().decode(T.self, from: jsonData)
    }
    
    public func getTwitchUser(userID: String) async throws -> Connection {
        let (data, status) = try await apiGet(path: "users/twitch/\(userID)")
        if status == 200 {
            return try decode(Connection.self, from: data)
        } else {
            throw try decode(ApiError.self, from: data)
        }
    }
    
    public func getEmotes(userID: String) async throws -> [Emote] {
        let user = try await getTwitchUser(userID: userID)
        return user.emoteSet?.emotes ?? []
    }
}
