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
                  targets: ["VIDVeKYC", "RSSigningSDK", "VIDVeKYCDependencies", "SecurePDF", "VIDVLivenessTarget"]
              )
          ],
          dependencies: [
              .package(url: "https://github.com/Valify-Solutions/VIDVDocKit-SPM.git", from: "1.5.0")
          ],
          targets: [
              .target(
                  name: "VIDVeKYCDependencies",
                  dependencies: [
                      .product(name: "VIDVDocKit", package: "VIDVDocKit-SPM")
                  ],
                  path: "Sources/VIDVeKYCDependencies"
              )
,
.binaryTarget(
    name: "VIDVeKYC",
    url: "https://raw.githubusercontent.com/Valify-Solutions/VIDVeKYC-SPM/3.0.2/Artifacts/VIDVeKYC.spm.xcframework.zip",
    checksum: "f5d7408a7fbe2c994d8ad0a6f18871b460ed06d7f8b489193f7ff4d8653c8d4e"
),
.binaryTarget(
    name: "RSSigningSDK",
    url: "https://raw.githubusercontent.com/Valify-Solutions/VIDVeKYC-SPM/3.0.2/Artifacts/RSSigningSDK.xcframework.zip",
    checksum: "e68f9f15a7fefe9d9828373c287cf366e557da5e33aa5046a8f3808008c179c1"
),
.binaryTarget(
    name: "SecurePDF",
    url: "https://raw.githubusercontent.com/Valify-Solutions/VIDVeKYC-SPM/3.0.2/Artifacts/SecurePDF.xcframework.zip",
    checksum: "ea8ede77d3641caedca2a387451365ad1360fb66c4d1748693c4cd3f3f760311"
),
.binaryTarget(
    name: "VIDVLivenessTarget",
    url: "https://raw.githubusercontent.com/Valify-Solutions/VIDVeKYC-SPM/3.0.2/Artifacts/VIDVLiveness.xcframework.zip",
    checksum: "d19870533b9271435cd3273b05f016ece70ffba1cf6849d043564a5210963a7a"
)
          ]
      )
