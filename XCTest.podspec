Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

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

  s.source       = { :git => "https://github.com/apple/swift-corelibs-xctest.git", :branch => "master" }

  s.source_files  = "Sources/**/*.swift"

  s.framework  = "Foundation"

  s.prepare_command = <<-CMD
                        find Sources/ -type f -name "*.swift" | xargs sed -e 's/import SwiftFoundation/import Foundation/g' -i ""
                        sed -i "" -e 's/usingBlock:/using:/' Sources/XCTest/Public/Asynchronous/XCTestCase+NotificationExpectation.swift
                      CMD
end
