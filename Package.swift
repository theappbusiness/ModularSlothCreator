// swift-tools-version:5.5
 import PackageDescription

 let package = Package(
     name: "ModularSlothCreator-PRLinter",
     defaultLocalization: "en",
     products: [
       .library(name: "DangerDeps", type: .dynamic, targets: ["ModularSlothCreator-PRLinter"])
     ],
     dependencies: [
         .package(url: "https://github.com/danger/swift.git", from: "3.12.3")
     ],
     targets: [
         .target(
             name: "ModularSlothCreator-PRLinter",
             dependencies: [
                 .product(name: "Danger", package: "swift")
             ],
             path: "ModularSlothCreator",
             sources: ["DangerProxy.swift"]
         )
     ]
 )
