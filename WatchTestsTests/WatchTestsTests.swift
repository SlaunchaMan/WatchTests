//
//  WatchTestsTests.swift
//  WatchTests Tests
//
//  Created by Jeff Kelley on 11/18/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

import XCTest

#if os(watchOS)
    import WatchKit
#endif

class WatchTestsTests: XCTestCase {
    
    #if os(watchOS)
    static var allTests = {
        return [
            ("testPassingTest", testPassingTest),
            ("testSomeOtherAssertions", testSomeOtherAssertions),
            ("testWatchSpecificStuff", testWatchSpecificStuff)
        ]
    }()
    #endif
    
    func testPassingTest() {
        print("This is my test method.")
        XCTAssertTrue(true)
    }
    
    func testSomeOtherAssertions() {
        let foo: Int? = nil
        
        XCTAssertNil(foo)
        
        XCTAssertTrue(true)
        XCTAssertFalse(false)
        
        XCTAssertEqual("a", "a")
        XCTAssertNotEqual("a", "b")
        XCTAssertLessThan(1, 2)
        XCTAssertGreaterThan(2, 1)
    }
    
    #if os(watchOS)
    func testWatchSpecificStuff() {
        let interfaceController = WKExtension
            .shared()
            .rootInterfaceController
            as? InterfaceController
        
        
        XCTAssertNotEqual(interfaceController, nil)
    }
    #endif
    
}
