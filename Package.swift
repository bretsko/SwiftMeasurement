// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MeasureKit",
    
    platforms: [
        .macOS(.v10_12), .iOS(.v12)//, .tvOS(.v10), .watchOS(.v4)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "MeasureKit",
            targets: ["MeasureKit"]),
    ],
    dependencies: [
        // .package(url: "https://github.com/bretsko/Quick", from: "2.2.1"),
        // .package(url: "https://github.com/bretsko/Nimble", from: "8.0.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "MeasureKit",
            dependencies: []),
        
        .testTarget(
            name: "MeasureKitTests",
            dependencies: ["MeasureKit"]),
    ],
    swiftLanguageVersions: [.v5]
)
