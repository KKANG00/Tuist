import ProjectDescription

let projectSettings: Settings = .settings(
    base: [: ],
    configurations: [
        .debug(name: .debug, xcconfig: "config/NetworkKitProject.xcconfig"),
        .release(name: .release, xcconfig: "config/NetworkKitProject.xcconfig")
    ],
    defaultSettings: .none
)

let targetSettings: Settings = .settings(
    base: [: ],
    configurations: [
        .debug(name: .debug, xcconfig: "config/NetworkKitTarget.xcconfig"),
        .release(name: .release, xcconfig: "config/NetworkKitTarget.xcconfig")
    ],
    defaultSettings: .none
)

let project = Project(
  name: "NetworkKit",
  organizationName: "kkang",
  settings: projectSettings,
  targets: [
    Target(
      name: "NetworkKit",
      platform: .iOS,
      product: .framework,
      bundleId: "tuist.test.app.network",
      infoPlist: "NetworkKit/Info.plist",
      sources: ["NetworkKit/Source/**"],
      settings: targetSettings)
  ])
