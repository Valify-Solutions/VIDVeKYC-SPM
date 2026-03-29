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
    url: "https://raw.githubusercontent.com/Valify-Solutions/VIDVeKYC-SPM/3.0.5/Artifacts/VIDVeKYC.spm.xcframework.zip",
    checksum: "c9df3a423043525836823510614c10fccbecc0137cef99a9751d5b67a493e5cf"
),
.binaryTarget(
    name: "RSSigningSDK",
    url: "https://raw.githubusercontent.com/Valify-Solutions/VIDVeKYC-SPM/3.0.5/Artifacts/RSSigningSDK.xcframework.zip",
    checksum: "e68f9f15a7fefe9d9828373c287cf366e557da5e33aa5046a8f3808008c179c1"
),
.binaryTarget(
    name: "SecurePDF",
    url: "https://raw.githubusercontent.com/Valify-Solutions/VIDVeKYC-SPM/3.0.5/Artifacts/SecurePDF.xcframework.zip",
    checksum: "26bb26a68f77fae7b5b29ae85f18a3fd18fd8e8a3b3a7798ba9eee83f692920e"
),
.binaryTarget(
    name: "VIDVLivenessTarget",
    url: "https://raw.githubusercontent.com/Valify-Solutions/VIDVeKYC-SPM/3.0.5/Artifacts/VIDVLiveness.xcframework.zip",
    checksum: "b066067b245bc4ad4e7d5feb104d632cc26445ee53582c06dc49f31d2830bfb8"
)
          ]
      )
