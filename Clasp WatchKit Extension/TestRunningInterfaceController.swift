//
//  InterfaceController.swift
//  Clasp WatchKit Extension
//
//  Created by Jeff Kelley on 11/18/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

import WatchKit
import Foundation
import XCTest

class TestRowController: NSObject {
    @IBOutlet weak var testNameLabel: WKInterfaceLabel?
    @IBOutlet weak var testStatusLabel: WKInterfaceLabel?
}

class TestRunningInterfaceController: WKInterfaceController {
    
    @IBOutlet weak var testListTable: WKInterfaceTable?
    
    override func awake(withContext context: Any?) {
        
    }
    
}
