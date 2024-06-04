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
        .library(name: "UIComponents", targets: ["UIComponents"]),
        .library(name: "Utility_Functions", targets: ["Utility_Functions"])
    ],
    dependencies: [
        // Alamofire 패키지를 종속성으로 추가합니다.
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.4.0"),
        .package(url: "https://github.com/SnapKit/SnapKit.git", from : "5.0.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "UIComponents", dependencies: []),
        .target(name: "Utility_Functions", dependencies: []),
        .target(
            name: "Example_BoilerPlate1",
            dependencies: ["Alamofire" , "SnapKit"]),
        .testTarget(
            name: "Example_BoilerPlate1Tests",
            dependencies: ["Example_BoilerPlate1"]),
    ]
)
