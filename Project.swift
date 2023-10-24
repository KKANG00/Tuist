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
    settings: nil,
    targets: [
        Target(
            name: "MovieInfo",
            platform: .iOS,
            product: .app,
            bundleId: "tuist.test.app",
            infoPlist: "MovieInfo/Info.plist",
            sources: ["MovieInfo/Source/**"],
            resources: ["MovieInfo/Resources/**"],
            dependencies: [
                .project(target: "NetworkKit", path: .relativeToManifest("NetworkKit"))
            ],
            settings: projectSettings
        )
    ]
)
