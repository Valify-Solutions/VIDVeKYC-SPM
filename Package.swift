// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "VIDVeKYC",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "VIDVeKYC",
            targets: ["VIDVeKYC"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "VIDVeKYC",
            url: "https://github.com/Valify-Solutions/VIDVeKYC-SPM/releases/download/3.0.1/VIDVeKYC.3.0.1.xcframework.zip",
            checksum: "1ad643d5fb1751b2bcc81c05276ae5d7b8bd77090865f038d3944a3eb4feb07f"
        )
    ]
)
