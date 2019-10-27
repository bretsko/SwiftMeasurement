// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "MeasureKit",
    
    platforms: [
        .macOS(.v10_14), .iOS(.v13)//, .tvOS(.v10), .watchOS(.v4)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "MeasureKit",
            targets: ["MeasureKit"]),
    ],
    dependencies: [
        
        // using NumberFormatter convs
          .package(url: "https://github.com/bretsko/MinimalBase", from: "1.0.0"),
          
        // .package(url: "https://github.com/bretsko/Quick", from: "2.2.1"),
        // .package(url: "https://github.com/bretsko/Nimble", from: "8.0.1"),
    ],
    targets: [
        .target(
            name: "MeasureKit",
            dependencies: ["MinimalBase"]),
        
//        .testTarget(
//            name: "MeasureKitTests",
//            dependencies: ["MeasureKit", "Quick", "Nimble"]),
    ],
    swiftLanguageVersions: [.v5]
)
