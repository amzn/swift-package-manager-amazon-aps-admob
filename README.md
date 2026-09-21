# Amazon Publisher Services AdMob Adapter — Swift Package Manager

Swift Package Manager distribution for the APS Google AdMob mediation adapter.

## Requirements

- iOS 13.0+
- Xcode 15.0+
- Amazon Publisher Services SDK 5.6.6+
- Google Mobile Ads SDK 11.0.0 – 13.x

## Installation

**Xcode**

1. File → Add Package Dependencies…
2. Enter `https://github.com/amzn/swift-package-manager-amazon-aps-admob.git`
3. Select "Up to Next Major Version" from `5.0.0`.
4. Add the `AmazonPublisherServicesAdMobAdapter` product to your app target.

**Package.swift**

```swift
.package(url: "https://github.com/amzn/swift-package-manager-amazon-aps-admob.git", from: "5.0.0")
```

Then add the product:

```swift
.product(name: "AmazonPublisherServicesAdMobAdapter", package: "swift-package-manager-amazon-aps-admob")
```

Adding this package transitively pulls in the APS SDK and the Google Mobile Ads SDK — you do not need to add them separately.

## Usage

```objc
// Objective-C
#import <DTBiOSSDK/DTBiOSSDK.h>
```

```swift
// Swift
import DTBiOSSDK
```

`AmazonPublisherServicesAdMobAdapter` is the SPM **product** (what you attach in Xcode). Adapter classes are loaded automatically at runtime via `NSClassFromString` — you do not need to import the adapter module in application code.

## `-ObjC` linker flag

Add `-ObjC` to **Build Settings → Other Linker Flags** for your app target. Required by DTBiOSSDK and Google Mobile Ads SDK.

## License

Apache License 2.0. See [LICENSE](./LICENSE).
