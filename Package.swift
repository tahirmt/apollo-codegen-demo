// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "apollo-codegen-demo",
    platforms: [.macOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "apollo-codegen-demo",
            targets: ["apollo-codegen-demo"]),
        .executable(name: "codegen", targets: ["codegen"]),
    ],
    dependencies: [
        .package(name: "apollo-ios", path: "/<#path to checkout#>/apollo-ios-dev/apollo-ios"),
        .package(name: "apollo-ios-codegen", path: "/<#path to checkout#>/apollo-ios-dev/apollo-ios-codegen"),
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.2.0"),
        .package(path: "API"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "apollo-codegen-demo",
            dependencies: [
                .product(name: "Apollo", package: "apollo-ios"),
                "API"
            ]),
        .executableTarget(
            name: "codegen",
            dependencies: [
                .product(name: "ApolloCodegenLib", package: "apollo-ios-codegen"),
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]),
        .testTarget(
            name: "apollo-codegen-demoTests",
            dependencies: [
                "apollo-codegen-demo",
            ]),
    ]
)
