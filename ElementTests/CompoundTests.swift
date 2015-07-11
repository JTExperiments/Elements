//
//  ElementTests.swift
//  ElementTests
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import UIKit
import XCTest
import Element

class CompoundTests: XCTestCase {

    let compound = Compound()

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testEmptySize() {
        XCTAssertEqual(compound.intrinsicContentSize(), CGSizeZero, "")
        XCTAssertEqual(compound.sizeThatFits(CGSizeZero), CGSizeZero, "")
        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(10, 10)), CGSizeZero, "")
    }

    func testOneStoneSizeThatFits() {
        compound.addElement(Stone(size: CGSizeMake(3, 4)))
        XCTAssertEqual(compound.sizeThatFits(CGSizeZero), CGSizeMake(3, 4), "")
        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(1, 5)), CGSizeMake(3, 4), "")
        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(10, 10)), CGSizeMake(3, 4), "")
        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(5, 1)), CGSizeMake(3, 4), "")
    }

    func testFrame() {
        compound.frame = CGRectMake(0, 0, 300, 300)
        XCTAssertEqual(compound.intrinsicContentSize(), CGSizeZero, "")
    }

    func testAddingStone() {
        compound.addElement(Stone(size: CGSizeMake(3, 4)))
        XCTAssertEqual(compound.intrinsicContentSize(), CGSizeMake(3, 4), "")
        compound.addElement(Stone(size: CGSizeMake(5, 1)))
        XCTAssertEqual(compound.intrinsicContentSize(), CGSizeMake(5, 4), "")

        let stone1 = Stone(size: CGSizeMake(1, 1))
        stone1.frame.origin = CGPointMake(9, 3)
        compound.addElement(stone1)
        XCTAssertEqual(compound.intrinsicContentSize(), CGSizeMake(10, 4), "")

        let stone2 = Stone(size: CGSizeMake(1, 1))
        stone2.frame.origin = CGPointMake(9, 9)
        compound.addElement(stone2)
        XCTAssertEqual(compound.intrinsicContentSize(), CGSizeMake(10, 10), "")

        let stone3 = Stone(size: CGSizeMake(1, 1))
        stone3.frame.origin = CGPointMake(-1, -1)
        compound.addElement(stone3)
        XCTAssertEqual(compound.intrinsicContentSize(), CGSizeMake(11, 11), "")
    }


//    func testPadding() {
//        compound.padding = Edge(top: 1, left: 2, bottom:1, right: 2)
//        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(10, 10)), CGSizeMake(4, 2), "")
//        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(0, 0)), CGSizeMake(0, 0), "")
//        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(2, 6)), CGSizeMake(2, 2), "")
//        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(1, 6)), CGSizeMake(1, 2), "")
//        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(6, 2)), CGSizeMake(4, 2), "")
//        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(6, 1)), CGSizeMake(4, 1), "")
//    }

}
