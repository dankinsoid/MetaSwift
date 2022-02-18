// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MetaSwift",
    platforms: [.macOS(.v10_15)],
    products: [
        .library(name: "MetaSwift", targets: ["MetaSwift"]),
    ],
    dependencies: [
        .package(name: "SwiftSyntax", url: "https://github.com/apple/swift-syntax.git", .exact("0.50500.0")),
        .package(name: "SwiftSemantics", url: "https://github.com/dankinsoid/SwiftSemantics.git", .exact("5.5.1"))
    ],
    targets: [
        .target(
            name: "MetaSwift",
            dependencies: [
                "SwiftSyntax",
                "SwiftSemantics"
            ]
        ),
        .testTarget(name: "MetaSwiftTests", dependencies: ["MetaSwift"]),
    ]
)
