# SwiftSevenTV

A wrapper around the 7TV API for Swift.

No tokens or anything needed.

## Usage

```swift
let client = SevenTVClient()
```

### Get user data

```swift
let connection = try await SevenTVClient().getTwitchUser(userID: "415324066")
let username = connection.username
/* ... */
```

### Get user emotes

```swift
let emotes = try await SevenTVClient().getEmotes(userID: "415324066")
```

## Credits

Thanks to [@sammwyy](https://github.com/sammwyy) and her [7tv-api](https://github.com/sammwyy/7tv-api) for being such a useful reference. This library is mainly based on the former, with a few modifications.

## License

SwiftSevenTV is licensed under the [MIT license](https://opensource.org/license/MIT). 
