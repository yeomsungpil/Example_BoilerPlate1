// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Example_BoilerPlate1",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Example_BoilerPlate1",
            targets: ["Example_BoilerPlate1"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Example_BoilerPlate1"),
        .testTarget(
            name: "Example_BoilerPlate1Tests",
            dependencies: ["Example_BoilerPlate1"]),
    ]
)
