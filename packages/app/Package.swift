// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorFirebaseApp",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FirebaseAppPlugin",
            targets: ["FirebaseAppPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "6.0.0")
    ],
    targets: [
        .target(
            name: "FirebaseAppPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/FirebaseAppPlugin"),
        .testTarget(
            name: "FirebaseAppPluginTests",
            dependencies: ["FirebaseAppPlugin"],
            path: "ios/Tests/FirebaseAppPluginTests")
    ]
)