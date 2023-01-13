// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "OSLogHelper",
    platforms: [.iOS(.v13),.tvOS(.v13),.watchOS(.v6),.macOS(.v11)],
    products: [
        .library(
            name: "OSLogHelper",
            targets: ["OSLogHelper"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "OSLogHelper",
            dependencies: []),
    ],
    swiftLanguageVersions: [.v5]
)
