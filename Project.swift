import ProjectDescription

let projectSettings: Settings = .settings(
    base: [: ],
    configurations: [
        .debug(name: .debug, xcconfig: "config/MovieInfoProject.xcconfig"),
        .release(name: .release, xcconfig: "config/MovieInfoProject.xcconfig")
    ],
    defaultSettings: .none
)

let project = Project(
    name: "MovieInfo",
    organizationName: "kkang",
    packages: [
        .remote(
            url: "https://github.com/davidskeck/FetchImage.git",
            requirement: .upToNextMajor(from: Version(0, 1, 0))
        )
    ],
    settings: nil,
    targets: [
        .init(
            name: "MovieInfo",
            platform: .iOS,
            product: .app,
            bundleId: "tuist.test.app",
            infoPlist: "MovieInfo/Info.plist",
            sources: ["MovieInfo/Source/**"],
            resources: ["MovieInfo/Resources/**"],
            dependencies: [
                .project(target: "NetworkKit", path: .relativeToManifest("NetworkKit")),
                .package(product: "FetchImage")
            ],
            settings: projectSettings
        ),
        .init(
          name: "MovieInfoTests",
          platform: .iOS,
          product: .unitTests,
          bundleId: "tuist.test.app.test",
          infoPlist: "MovieInfoTests/Resources/Info.plist",
          sources: ["MovieInfoTests/Source/**"],
          dependencies: [
            .target(name: "MovieInfo")
          ]
        )
    ]
)
