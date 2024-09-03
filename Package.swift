// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "TagLib",
  products: [
    .library(name: "TagLib", targets: ["TagLib"]),
  ],
  targets: [
    .target(
      name: "TagLib",
      path: "taglib",
      // To rebuild the public headers, run:
      //   cmake -DCMAKE_INSTALL_PREFIX=./taglib -DCMAKE_BUILD_TYPE=Release .
      //   make
      //   make install
      // Then check in “taglib/include”.
      cxxSettings: [
				.headerSearchPath("include/taglib"),
				.headerSearchPath("utfcpp/source"),
				.headerSearchPath("."),
				.headerSearchPath("mod"),
				.headerSearchPath("riff"),
				.headerSearchPath("toolkit"),
      ]
    ),
    .target(
      name: "TagLibExample",
      dependencies: [
        "TagLib"
      ],
      path: "examples",
      sources: [
        "example.cpp"
      ]
    )
  ]
)
