// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FlagPhoneNumber",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_12)
        ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FlagPhoneNumber",
            targets: ["FlagPhoneNumber"]),
    ],
    dependencies: [
        .package(name:"libPhoneNumber",url: "https://github.com/iziz/libPhoneNumber-iOS", .branch("master")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FlagPhoneNumber",
            dependencies: ["libPhoneNumber"],
            resources: [.copy("Sources/FlagPhoneNumber/Resources/countryCodes.json")])
    ]
)

