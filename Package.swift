// swift-tools-version:5.9
//
//  Package.swift
//
//  Copyright (c) 2023 Alamofire Software Foundation (http://alamofire.org/)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import PackageDescription

let package = Package(name: "AlamofireImage",
                      platforms: [.iOS(.v11),
                                  .macOS(.v10_13),
                                  .tvOS(.v11),
                                  .watchOS(.v4)],
                      products: [.library(name: "AlamofireImage", targets: ["AlamofireImage"])],
                      dependencies: [.package(url: "https://github.com/Alamofire/Alamofire.git",
                                              from: "5.7.0")],
                      targets: [.target(name: "AlamofireImage",
                                        dependencies: ["Alamofire"],
                                        path: "Source",
                                        exclude: ["Info.plist"]),
                                .testTarget(name: "AlamofireImageTests",
                                            dependencies: ["AlamofireImage"],
                                            path: "Tests",
                                            exclude: ["Info.plist", "Test Plans"],
                                            resources: [.process("Resources")])],
                      swiftLanguageVersions: [.v5])
