//
//  WrapperTests.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright © 2015 James Tang. All rights reserved.
//

import XCTest
import Element

class WrapperTests: XCTestCase {

    let wrapper = Wrapper()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testEmptySize() {
        XCTAssertEqual(wrapper.intrinsicContentSize(), CGSizeZero, "")
        XCTAssertEqual(wrapper.sizeThatFits(CGSizeZero), CGSizeZero, "")
        XCTAssertEqual(wrapper.sizeThatFits(CGSizeMake(10, 10)), CGSizeZero, "")
    }

    func testOneStoneSizeThatFits() {
        wrapper.addElement(Stone(size: CGSizeMake(3, 4)))
        XCTAssertEqual(wrapper.sizeThatFits(CGSizeZero), CGSizeMake(3, 4), "")
        XCTAssertEqual(wrapper.sizeThatFits(CGSizeMake(1, 5)), CGSizeMake(3, 4), "")
        XCTAssertEqual(wrapper.sizeThatFits(CGSizeMake(10, 10)), CGSizeMake(3, 4), "")
        XCTAssertEqual(wrapper.sizeThatFits(CGSizeMake(5, 1)), CGSizeMake(3, 4), "")
    }

    func testFrame() {
        wrapper.bounds = CGRectMake(0, 0, 300, 300)
        XCTAssertEqual(wrapper.intrinsicContentSize(), CGSizeZero, "")
    }

    func testAddingStone() {
        wrapper.addElement(Stone(size: CGSizeMake(3, 4)))
        XCTAssertEqual(wrapper.intrinsicContentSize(), CGSizeMake(3, 4), "")
        wrapper.addElement(Stone(size: CGSizeMake(5, 1)))
        XCTAssertEqual(wrapper.intrinsicContentSize(), CGSizeMake(5, 4), "")

        let stone1 = Stone(size: CGSizeMake(1, 1))
        stone1.bounds.origin = CGPointMake(9, 3)
        wrapper.addElement(stone1)
        XCTAssertEqual(wrapper.intrinsicContentSize(), CGSizeMake(10, 4), "")

        let stone2 = Stone(size: CGSizeMake(1, 1))
        stone2.bounds.origin = CGPointMake(9, 9)
        wrapper.addElement(stone2)
        XCTAssertEqual(wrapper.intrinsicContentSize(), CGSizeMake(10, 10), "")

        let stone3 = Stone(size: CGSizeMake(1, 1))
        stone3.bounds.origin = CGPointMake(-1, -1)
        wrapper.addElement(stone3)
        XCTAssertEqual(wrapper.intrinsicContentSize(), CGSizeMake(11, 11), "")
    }

    func testAddingStoneWithTopPadding() {
        let stone = Stone(size: CGSizeMake(1, 1))
        stone.padding = Edge(top: 1, left: 0, bottom: 0, right: 0)
        wrapper.addElement(stone)
        XCTAssertEqual(wrapper.intrinsicContentSize(), CGSizeMake(1, 2), "")
    }
    func testAddingStoneWithLeftPadding() {
        let stone = Stone(size: CGSizeMake(1, 1))
        stone.padding = Edge(top: 0, left: 1, bottom: 0, right: 0)
        wrapper.addElement(stone)
        XCTAssertEqual(wrapper.intrinsicContentSize(), CGSizeMake(2, 1), "")
    }
    func testAddingStoneWithRightPadding() {
        let stone = Stone(size: CGSizeMake(1, 1))
        stone.padding = Edge(top: 0, left: 0, bottom: 0, right: 1)
        wrapper.addElement(stone)
        XCTAssertEqual(wrapper.intrinsicContentSize(), CGSizeMake(2, 1), "")
    }
    func testAddingStoneWithBottomPadding() {
        let stone = Stone(size: CGSizeMake(1, 1))
        stone.padding = Edge(top: 0, left: 0, bottom: 1, right: 0)
        wrapper.addElement(stone)
        XCTAssertEqual(wrapper.intrinsicContentSize(), CGSizeMake(1, 2), "")
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
