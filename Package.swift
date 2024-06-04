// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Example_BoilerPlate1",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "UIComponents",
            targets: ["UIComponents"]),
        .library(name: "Add_Library1", targets: ["Target1"])
    ],
    dependencies: [
        // Alamofire 패키지를 종속성으로 추가합니다.
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.4.0"),
        .package(url: "https://github.com/SnapKit/SnapKit.git", from : "5.0.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "UIComponents",
            dependencies: ["Alamofire" , "SnapKit"]),
        .target(name: "Target1",
            dependencies: []),
//        .testTarget(
//            name: "Example_BoilerPlate1Tests",
//            dependencies: ["Example_BoilerPlate1"]),
    ]
)
