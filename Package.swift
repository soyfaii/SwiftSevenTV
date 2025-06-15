// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftSevenTV",
    platforms: [
        .macOS(.v12), .iOS(.v16), .tvOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftSevenTV",
            targets: ["SwiftSevenTV"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftSevenTV"),
        .testTarget(
            name: "SwiftSevenTVTests",
            dependencies: ["SwiftSevenTV"]
        ),
    ]
)
