// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "type_safe",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "type_safe",
            targets: ["type_safe"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "type_safe",
            dependencies: [],
            path: ".",
            sources: ["spm.cpp"],
            publicHeadersPath: "include",
            cxxSettings: [ .headerSearchPath("external/debug_assert/") ])
    ],
    cxxLanguageStandard: .cxx20
)
