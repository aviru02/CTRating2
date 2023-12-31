// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CTRating2",
    platforms: [.iOS(.v13)], // added version support
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CTRating2",
            targets: ["CTRating2"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CTRating2",
            dependencies: [],
            /// from Swift 5.3 we can include asset catalog, so used `resources` and provided the name of the asset catalog which contains the resources, here its `CTRating2Images.xcassets`
            resources: [.process("CTRating2Images.xcassets")]),
        .testTarget(
            name: "CTRating2Tests",
            dependencies: ["CTRating2"]),
    ]
)
