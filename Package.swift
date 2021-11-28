// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "CSES",
    platforms: [.macOS(.v12)],
    products: [
        .library(name: "CSES", targets: ["CSES"]),
    ],
    targets: [
        .target(name: "CSES"),
        .testTarget(name: "CSESTests", dependencies: ["CSES"]),
    ]
)
