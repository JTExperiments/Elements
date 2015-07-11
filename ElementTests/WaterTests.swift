//
//  WaterTests.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import Foundation
import XCTest
import Element

class WaterTests: XCTestCase {

    let water : Water = Water(liter: 9)

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testSizeThatFits() {
        XCTAssertEqual(water.sizeThatFits(CGSizeMake(3, 3)), CGSizeMake(3, 3), "")
        XCTAssertEqual(water.sizeThatFits(CGSizeMake(1, 9)), CGSizeMake(1, 9), "")
        XCTAssertEqual(water.sizeThatFits(CGSizeMake(9, 1)), CGSizeMake(9, 1), "")
        XCTAssertEqual(water.sizeThatFits(CGSizeMake(5, 5)), CGSizeMake(5, 2), "")
        XCTAssertEqual(water.sizeThatFits(CGSizeMake(2, 6)), CGSizeMake(2, 5), "")
        XCTAssertEqual(water.sizeThatFits(CGSizeMake(2, 2)), CGSizeMake(2, 2), "")
    }

    func testIntrinsicSize() {
        XCTAssertEqual(water.intrinsicContentSize(), CGSizeMake(9, 1), "")
        water.padding = Edge(top: 1, left: 2, bottom:1, right: 2) // 4 x 2
        XCTAssertEqual(water.intrinsicContentSize(), CGSizeMake(13, 3), "")
    }

    func testPaddingWater() {
        water.padding = Edge(top: 1, left: 2, bottom:1, right: 2) // 2 x 4
        XCTAssertEqual(water.sizeThatFits(CGSizeMake(20, 20)), CGSizeMake(13, 3), "")
        XCTAssertEqual(water.sizeThatFits(CGSizeMake(0, 20)), CGSizeMake(4, 2), "")
        XCTAssertEqual(water.sizeThatFits(CGSizeMake(20, 0)), CGSizeMake(4, 2), "")
        XCTAssertEqual(water.sizeThatFits(CGSizeMake(5, 5)), CGSizeMake(5, 5), "")
        XCTAssertEqual(water.sizeThatFits(CGSizeMake(5, 3)), CGSizeMake(5, 3), "")
        XCTAssertEqual(water.sizeThatFits(CGSizeMake(3, 5)), CGSizeMake(4, 5), "")
    }

}
