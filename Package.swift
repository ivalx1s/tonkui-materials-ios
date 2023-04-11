// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "tonkui-materials",
    platforms: [
        .iOS(.v14),
        .watchOS(.v7),
        .tvOS(.v14),
        .macCatalyst(.v14)
    ],
    products: [
        .library(
            name: "TonkUIMaterials",
            targets: ["TonkUIMaterials"]),
    ],
    targets: [
        .target(
            name: "TonkUIMaterials",
            path: "Sources"
        )
    ]
)
