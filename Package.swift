// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMModulesToPlaygroundbook",
    products: [
        .executable(name: "SPMModulesToPlaygroundbook", targets: ["SPMModulesToPlaygroundbook"]),
        .library(name: "SPMModulesToPlaygroundbookCore", targets: ["SPMModulesToPlaygroundbookCore"]),
    ],
    dependencies: [
        .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.35.8"),
        .package(url: "https://github.com/Realm/SwiftLint", from: "0.28.1"),
        .package(url: "https://github.com/orta/Komondor", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "SPMModulesToPlaygroundbook",
            dependencies: ["SPMModulesToPlaygroundbookCore"]
        ),
        .target(
            name: "SPMModulesToPlaygroundbookCore",
            dependencies: []
        ),
        .testTarget(
            name: "SPMModulesToPlaygroundbookTests",
            dependencies: ["SPMModulesToPlaygroundbookCore"]
        ),
    ]
)

// The settings for the git hooks for our repo
#if canImport(PackageConfig)
    import PackageConfig

    let config = PackageConfig([
        "komondor": [
            // When someone has run `git commit`, first run
            // run SwiftFormat and the auto-correcter for SwiftLint
            "pre-commit": [
                "swift run swiftformat .",
                "swift run swiftlint autocorrect --path Sources",
                "swift run swiftlint autocorrect --path Tests",
                "git add .",
            ],
        ],
    ])
#endif
