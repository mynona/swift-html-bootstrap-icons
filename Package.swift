// swift-tools-version:6.2
import PackageDescription

let package = Package(
    name: "swift-html-bootstrap-icons",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "BootstrapIcons",
            targets: ["BootstrapIcons"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/BinaryBirds/swift-html.git", from: "1.7.0"),
    ],
    targets: [
        .target(
            name: "BootstrapIcons",
            dependencies: [
               .product(name: "SwiftHtml", package: "swift-html"),
               .product(name: "SwiftSvg", package: "swift-html")
            ],
            swiftSettings: swiftSettings
        ),
    ]
)

var swiftSettings: [SwiftSetting] {
   [
      .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release))
   ]
}
