import Testing
@testable import SwiftSevenTV

@Test func fetchUser() async throws {
    let connection = try await SevenTVClient().getTwitchUser(userID: "415324066")
    #expect(connection.username == "soyfaii")
    #expect(connection.id == "415324066")
    #expect(connection.platform == .twitch)
    #expect(connection.emoteCapacity >= 1000)
    #expect(connection.emoteSet?.emotes?.count ?? 0 >= 1)
}

@Test func fetchEmoteNames() async throws {
    let emotes = try await SevenTVClient().getEmotes(userID: "415324066")
    #expect(emotes.count > 0)
    print(emotes.map { emote in
        [ emote.name : emote.url ]
    })
}
