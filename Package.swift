// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "CocoaZ",
    defaultLocalization: "en",
    platforms: [
		.iOS(.v16),
		.visionOS(.v2)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CocoaZ",
            targets: ["CocoaZ"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CocoaZ",
            dependencies: [],
            path: "CocoaZ",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ],
            linkerSettings: [
                .linkedLibrary("z")
            ]
        )
    ]
)
