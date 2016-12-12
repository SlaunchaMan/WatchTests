//
//  ExtensionDelegate.swift
//  Clasp WatchKit Extension
//
//  Created by Jeff Kelley on 11/18/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

import WatchKit
import XCTest

class ExtensionDelegate: NSObject, WKExtensionDelegate {

    func applicationDidFinishLaunching() {
        XCTMain([testCase(WatchTestsTests.allTests)])
    }
    
}
