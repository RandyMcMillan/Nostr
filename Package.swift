// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let dependencies: [Package.Dependency]

#if os(macOS)
    dependencies = [
        // Dependencies used for package development
        .package(url: "https://github.com/csjones/lefthook.git", branch: "swift"),
        .package(url: "https://github.com/nicklockwood/SwiftFormat.git", from: "0.49.5"),
        .package(url: "https://github.com/realm/SwiftLint.git", from: "0.46.5"),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
        .package(url: "https://github.com/daltoniam/Starscream.git", branch: "master"),
        .package(url: "https://github.com/jb55/secp256k1.swift.git", branch: "main")
    ]
#else
    dependencies = [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/daltoniam/Starscream.git", branch: "master"),
        .package(url: "https://github.com/jb55/secp256k1.swift.git", branch: "main")
    ]
#endif

let package = Package(
    name: "Nostr",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Nostr",
            targets: ["Nostr", "NostrTests"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/daltoniam/Starscream.git", branch: "master"),
        .package(url: "https://github.com/jb55/secp256k1.swift.git", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Nostr",
            exclude: []
        ),
        .testTarget(
            name: "NostrTests",
            exclude: []
        ),
    ]
)
