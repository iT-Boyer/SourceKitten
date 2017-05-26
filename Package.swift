import PackageDescription

let package = Package(
  name: "SourceKitten",
  targets: [
    Target(name: "SourceKittenFramework"),
    Target(name: "sourcekitten",
      dependencies: [.Target(name: "SourceKittenFramework")]),
  ],
  dependencies: [
    .Package(url: "https://github.com/Carthage/Commandant.git", versions: Version(0, 12, 0)..<Version(0, 12, .max)),
    .Package(url: "/Users/jp/Projects/SWXMLHash", majorVersion: 4),
    .Package(url: "/Users/jp/Projects/Yams", majorVersion: 1),
    .Package(url: "https://github.com/norio-nomura/Clang_C.git", majorVersion: 1),
    .Package(url: "https://github.com/norio-nomura/SourceKit.git", majorVersion: 1),
  ],
  swiftLanguageVersions: [3, 4],
  exclude: [
    "Source/SourceKittenFramework/clang-c",
    "Source/SourceKittenFramework/sourcekitd.h",
    "Tests/SourceKittenFrameworkTests/Fixtures",
  ]
)
