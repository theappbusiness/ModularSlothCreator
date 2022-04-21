//
//  CareTests.swift
//  CareTests
//
//  Created by Pranav Kasetti on 21/04/2022.
//

import XCTest
@testable import Care

class CareTests: XCTestCase {
    func testCareSchedule() throws {
        let date = Date()
        let events: [(Date, CareSchedule.Event)] = [(date, .bedtime)]
        let schedule = CareSchedule(events: events)

        XCTAssertEqual(events.count, schedule.events.count)
        XCTAssertEqual(events[0].0, schedule.events[0].0)
    }
}
