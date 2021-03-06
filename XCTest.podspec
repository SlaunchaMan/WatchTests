Pod::Spec.new do |s|

  s.name         = "XCTest"
  s.version      = "3.0.1"
  s.summary      = "A watchOS compilation of Apple’s open-source XCTest."

  s.description  = <<-DESC
			A watchOS compilation of Apple’s open-source XCTest.
                   DESC

  s.homepage     = "https://github.com/apple/swift-corelibs-xctest"
  s.license      = "Apache License, Version 2.0"
  s.author    = "Apple"

  s.watchos.deployment_target = "3.0"

  s.source       = { :git => "https://github.com/apple/swift-corelibs-xctest.git", :tag => "swift-" + s.version.to_s + "-RELEASE" }

  s.source_files  = "Sources/**/*.swift"

  s.framework  = "Foundation"

  s.prepare_command = <<-CMD
                        find Sources/ -type f -name "*.swift" | xargs sed -e 's/import SwiftFoundation/import Foundation/g' -i ""
                        sed -i "" -e 's/usingBlock:/using:/' Sources/XCTest/Public/XCTestCase+Asynchronous.swift
                      CMD
end
