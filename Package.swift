// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "spm-modules-to-playground-book",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "spm-modules-to-playground-book",
            targets: ["spm-modules-to-playground-book"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "spm-modules-to-playground-book",
            dependencies: []),
        .testTarget(
            name: "spm-modules-to-playground-bookTests",
            dependencies: ["spm-modules-to-playground-book"]),
    ]
)
