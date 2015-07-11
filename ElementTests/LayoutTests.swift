//
//  PlayTests.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright © 2015 James Tang. All rights reserved.
//

import XCTest
import Element

class PlayTests: XCTestCase {

    let wrapper = Wrapper()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testDescription() {

        let balloon = Balloon(volume: 9)
        let water = Water(liter: 9)
        balloon.addElement(water)
        wrapper.addElement(balloon)

        let stone1 = Stone(size: CGSizeMake(3, 4))
        let stone2 = Stone(size: CGSizeMake(6, 4))
        let wrapper2 = Wrapper(elements: [stone1, stone2])
        wrapper2.bounds = CGRectMake(10, 10, 200, 200)
        wrapper.addElement(wrapper2)

        XCTAssertEqual(wrapper.bounds, CGRectZero, "")
        XCTAssertEqual(balloon.bounds, CGRectMake(0, 0, 3, 3), "")
        XCTAssertEqual(water.bounds, CGRectMake(0, 0, 3, 3), "")
        XCTAssertEqual(wrapper2.bounds, CGRectMake(10, 10, 200, 200), "")
        XCTAssertEqual(stone1.bounds, CGRectMake(0, 0, 3, 4), "")
        XCTAssertEqual(stone2.bounds, CGRectMake(0, 0, 6, 4), "")

        print("Start printing wrapper hierachy:\n\(wrapper)")

    }
}
