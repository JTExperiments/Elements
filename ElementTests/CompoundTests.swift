//
//  ElementTests.swift
//  ElementTests
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

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
        XCTAssertEqual(compound.intrinsicContentSize(), CGSizeMake(-1, -1), "")
        XCTAssertEqual(compound.sizeThatFits(CGSizeZero), CGSizeZero, "")
        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(10, 10)), CGSizeZero, "")
    }

    func testOneStoneSizeThatFits() {
        compound.addElement(Stone(size: CGSizeMake(3, 4)))
        XCTAssertEqual(compound.sizeThatFits(CGSizeZero), CGSizeZero, "")
        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(CGFloat.max, CGFloat.max)), CGSizeZero, "")
        XCTAssertEqual(compound.intrinsicContentSize(), CGSizeMake(-1, -1), "")
    }

    func testFrame() {
        compound.frame = CGRectMake(0, 0, 300, 300)
        XCTAssertEqual(compound.intrinsicContentSize(), CGSizeMake(-1, -1), "")
        XCTAssertEqual(compound.sizeThatFits(CGSizeZero), CGSizeMake(300, 300), "")

        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(CGFloat.max, CGFloat.max)), CGSizeMake(300, 300), "")
    }

    func testAddingStone() {
        compound.addElement(Stone(size: CGSizeMake(3, 4)))
        XCTAssertEqual(compound.intrinsicContentSize(), CGSizeMake(-1, -1), "")
    }

}
