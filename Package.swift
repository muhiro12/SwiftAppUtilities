// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftAppUtilities",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "SwiftAppUtilities",
            targets: ["SwiftAppUtilities"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/muhiro12/SwiftUtilities", "1.0.0"..<"2.0.0")
    ],
    targets: [
        .target(
            name: "SwiftAppUtilities",
            dependencies: [

                .product(name: "SwiftUtilities", package: "SwiftUtilities")
            ]
        )
    ]
)
