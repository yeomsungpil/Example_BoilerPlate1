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
        .target(
            name: "UIComponents",
            dependencies: ["Alamofire" , "SnapKit"]),
        .target(name: "Target1",
            dependencies: []),
        // 테스트를 정의하고 실행 할 수 있게 해주는 코드
        // 패키지의 기능이 제대로 작동하는지 확인 할 수 있음, 자동화된 테스트를 작성하여 코드를 변경할 때마다 기능이 깨지지 않게 확인할 수 있음
        .testTarget(name: "Example_BoilerPlate1Tests", dependencies: ["UIComponents"])
    ]
)
