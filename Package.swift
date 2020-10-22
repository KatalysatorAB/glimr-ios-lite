// swift-tools-version:5.3
import PackageDescription

let package = Package(	
    name: "GLGeoRealtime",	
    defaultLocalization: "en",
    platforms: [	
        .iOS(.v9)	
    ],	
    products: [	
    	.library(name: "GLGeoRealtime", type: .static, targets: ["GLGeoRealtime"])
    ],	
    dependencies: [	
        // Dependencies declare other packages that this package depends on.	
    ],	
    targets: [	
        .binaryTarget(	
            name: "GLGeoRealtimeLibrary",	
            path: "GLGeoRealtimeStatic.xcframework"	
        ),
    .target(
      name: "GLGeoRealtime",
      dependencies: ["GLGeoRealtimeLibrary"],
      path: "GLGeoRealtime",

      publicHeadersPath: "headers/GLGeoRealtimeLibrary",
      linkerSettings: [
        .linkedLibrary("z"),
      ]
    ),
    ]	
) 