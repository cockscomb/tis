import PackageDescription

let package = Package(
    name: "tis",
    dependencies: [
        .Package(url: "https://github.com/cockscomb/TextInputSources.git", "0.1.0-pre"),
        .Package(url: "https://github.com/kylef/Commander.git", majorVersion: 0),
    ]
)
