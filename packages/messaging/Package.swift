// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorFirebaseMessaging",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FirebaseMessagingPlugin",
            targets: ["FirebaseMessagingPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "6.0.0")
    ],
    targets: [
        .target(
            name: "FirebaseMessagingPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/FirebaseMessagingPlugin"),
        .testTarget(
            name: "FirebaseMessagingPluginTests",
            dependencies: ["FirebaseMessagingPlugin"],
            path: "ios/Tests/FirebaseMessagingPluginTests")
    ]
)