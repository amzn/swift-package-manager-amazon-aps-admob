// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "AmazonPublisherServicesAdMobAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AmazonPublisherServicesAdMobAdapter", targets: ["APSAdMobAdapterTarget"])
    ],
    dependencies: [
        .package(url: "https://github.com/amzn/swift-package-manager-amazon-aps.git", from: "5.6.6"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", "11.0.0"..<"14.0.0")
    ],
    targets: [
        .target(
            name: "APSAdMobAdapterTarget",
            dependencies: [
                "APSAdMobAdapter",
                .product(name: "AmazonPublisherServicesSDK", package: "swift-package-manager-amazon-aps"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "Sources/APSAdMobAdapterTarget"
        ),
        .binaryTarget(
            name: "APSAdMobAdapter",
            url: "https://d14jk8f50gmy3e.cloudfront.net/iOS_APS_AdMob_SPM/APSAdMobAdapter-5.0.0.zip",
            checksum: "2660a1be6a6b8518330b114bd8580ace8d615d29e55916a94903166184a16fd2"
        )
    ]
)
