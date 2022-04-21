//
//  ModelsTests.swift
//  ModelsTests
//
//  Created by Pranav Kasetti on 21/04/2022.
//

import XCTest
@testable import Models

class ModelsTests: XCTestCase {
    func testColorDescription() throws {
        let color = Sloth.Color.green
        XCTAssertEqual(color.description, "green")
    }

    func testFood() throws {
        let flower = Sloth.Food(name: "Flower Bud", energy: 10)
        XCTAssertEqual(flower.name, "Flower Bud")
        XCTAssertEqual(flower.energy, 10)
    }

    func testComfortLevelHumidWarm() throws {
        let habitat = Habitat(isHumid: true, isWarm: true)
        XCTAssertEqual(habitat.comfortLevel, 10)
    }

    func testComfortLevelHumidCold() throws {
        let habitat = Habitat(isHumid: true, isWarm: false)
        XCTAssertEqual(habitat.comfortLevel, 5)
    }

    func testComfortLevelDryCold() throws {
        let habitat = Habitat(isHumid: false, isWarm: false)
        XCTAssertEqual(habitat.comfortLevel, 1)
    }

    func testPowerDescription() throws {
        let fire = Sloth.Power.fire
        XCTAssertEqual(fire.description, "fire")
    }

    func testSlothEats() throws {
        var sloth = Sloth(name: "Modular Sloth", color: .green, power: .fire)
        XCTAssertEqual(sloth.eat(Sloth.Food.largeLeaf), 15)
    }

    func testSlothSleeps() throws {
        var sloth = Sloth(name: "Modular Sloth", color: .green, power: .fire)
        XCTAssertEqual(sloth.sleep(in: .init(isHumid: true, isWarm: true)), 130)
    }
}
