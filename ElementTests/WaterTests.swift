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
        XCTAssertEqual(water.sizeThatFits(CGSizeMake(2, 2)), CGSizeMake(2, 5), "")
        XCTAssertEqual(water.sizeThatFits(CGSizeMake(1, 1)), CGSizeMake(1, 9), "")
    }

    func testIntrinsicSize() {
        XCTAssertEqual(water.intrinsicContentSize(), CGSizeMake(9, 1), "")
    }

}
