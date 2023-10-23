import ProjectDescription

let project = Project(
    name: "MovieInfo",
    organizationName: "tuist.test.app",
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
            dependencies: [],
            settings: nil
        )
    ]
)
