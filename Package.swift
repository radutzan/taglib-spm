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
        .headerSearchPath("../3rdparty"),
        .headerSearchPath(""),
        .headerSearchPath("ape"),
        .headerSearchPath("asf"),
        .headerSearchPath("dsdiff"),
        .headerSearchPath("dsf"),
        .headerSearchPath("flac"),
        .headerSearchPath("it"),
        .headerSearchPath("mod"),
        .headerSearchPath("mp4"),
        .headerSearchPath("mpc"),
        .headerSearchPath("mpeg"),
        .headerSearchPath("mpeg/id3v1"),
        .headerSearchPath("mpeg/id3v2"),
        .headerSearchPath("mpeg/id3v2/frames"),
        .headerSearchPath("ogg"),
        .headerSearchPath("ogg/flac"),
        .headerSearchPath("ogg/opus"),
        .headerSearchPath("ogg/speex"),
        .headerSearchPath("ogg/vorbis"),
        .headerSearchPath("riff"),
        .headerSearchPath("riff/aiff"),
        .headerSearchPath("riff/wav"),
        .headerSearchPath("s3m"),
        .headerSearchPath("toolkit"),
        .headerSearchPath("trueaudio"),
        .headerSearchPath("wavpack"),
        .headerSearchPath("xm"),
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
