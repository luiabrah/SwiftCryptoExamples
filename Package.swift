// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftCryptoExamples",
    platforms: [
        .macOS(.v10_15)
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-crypto.git", from: "2.0.3"),
    ],
    targets: [
        .executableTarget(
            name: "HashFunctions",
            dependencies: [
                .product(name: "Crypto", package: "swift-crypto")
            ]),
        .executableTarget(
            name: "MessageAuthenticationCodes",
            dependencies: [
                .product(name: "Crypto", package: "swift-crypto")
            ]),
    ]
)
