// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KMLParser",
    platforms: [
      .iOS(.v9)
    ],
    products: [
        .library(
            name: "KMLParser",
            targets: ["KMLParser"]),
    ],
    targets: [
        .target(
           name: "KMLParser",
           dependencies: [],
           path: "Sources/KMLParser/ObjC",
           publicHeadersPath: "."
        )
    ]
)
