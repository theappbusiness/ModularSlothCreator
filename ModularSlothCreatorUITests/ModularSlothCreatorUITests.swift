//
//  ModularSlothCreatorUITests.swift
//  ModularSlothCreatorUITests
//
//  Created by Pranav Kasetti on 21/04/2022.
//

import XCTest

class ModularSlothCreatorUITests: XCTestCase {
    
    override func setUpWithError() throws {
        continueAfterFailure = false
    }
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
