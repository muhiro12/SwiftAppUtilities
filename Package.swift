// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftAppUtilities",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftAppUtilities",
            targets: ["SwiftAppUtilities"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/muhiro12/SwiftUtilities", "1.0.0"..<"2.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftAppUtilities",
            dependencies: [

                .product(name: "SwiftUtilities", package: "SwiftUtilities")
            ]
        ),
        .testTarget(
            name: "SwiftAppUtilitiesTests",
            dependencies: ["SwiftAppUtilities"]
        ),
    ]
)
