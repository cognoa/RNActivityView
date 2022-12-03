// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RNActivityView",
    platforms: [
        .iOS(.v11),
        .tvOS(.v11),
    ],
    products: [
        .library(name: "RNActivityView", targets: ["RNActivityView"]),
    ],
    targets: [
        .target(
            name: "RNActivityView",
            dependencies: ["RNActivityViewObjC"],
            path: "RNActivityViewSwift/",
            sources: ["RNActivityView.swift"]
        ),
        .target(
            name: "RNActivityViewObjC",
            path: "RNActivityView/",
            sources: ["RNActivityView.m", "UIView+RNActivityView.m"],
            publicHeadersPath: "includes",
            cSettings: [
                .headerSearchPath("includes")
            ]
        ),
    ]
)
