//
//  BalloonTests.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright © 2015 James Tang. All rights reserved.
//

import XCTest
import Element

class BalloonTests: XCTestCase {

    var balloon : Balloon = {
        let balloon = Balloon(volume: 9)
        balloon.frame = CGRectMake(0, 0, 9, 1)
        return balloon
    }()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testEmptyIntrinsicSize() {
        XCTAssertEqual(balloon.intrinsicContentSize(), CGSizeZero, "")
    }

    func testEmptyIntrinsicSizeWithPadding() {
        balloon.padding = Edge(top: 1, left: 2, bottom:1, right: 2) // 4 x 2
        XCTAssertEqual(balloon.intrinsicContentSize(), CGSizeMake(4, 2), "")
    }

    func testIntrinsicSizeWithWater() {
        balloon.addElement(Water(liter: 9))
        XCTAssertEqual(balloon.intrinsicContentSize(), CGSizeMake(9, 1), "")
    }

    func testIntrinsicSizeWithPaddingAndWater() {
        balloon.addElement(Water(liter: 9))
        balloon.padding = Edge(top: 1, left: 2, bottom:1, right: 2) // 4 x 2
        XCTAssertEqual(balloon.intrinsicContentSize(), CGSizeMake(13, 3), "")
    }

    func testSizeThatFitsWithWater() {

        balloon.addElement(Water(liter: 9))
        balloon.padding = Edge(top: 1, left: 2, bottom:1, right: 2) // 4 x 2

        XCTAssertEqual(balloon.sizeThatFits(CGSizeMake(20, 20)), CGSizeMake(13, 3), "")
        XCTAssertEqual(balloon.sizeThatFits(CGSizeMake(0, 20)), CGSizeMake(13, 3), "")
        XCTAssertEqual(balloon.sizeThatFits(CGSizeMake(20, 0)), CGSizeMake(13, 3), "")
        XCTAssertEqual(balloon.sizeThatFits(CGSizeMake(7, 7)), CGSizeMake(7, 5), "")
        XCTAssertEqual(balloon.sizeThatFits(CGSizeMake(5, 20)), CGSizeMake(5, 11), "")
        XCTAssertEqual(balloon.sizeThatFits(CGSizeMake(5, 0)), CGSizeMake(5, 11), "")
    }

    func testFrame() {
        XCTAssertEqual(Balloon(volume: 1).frame, CGRectMake(0, 0, 1, 1), "")
        XCTAssertEqual(Balloon(volume: 2).frame, CGRectMake(0, 0, 2, 1), "")
        XCTAssertEqual(Balloon(volume: 3).frame, CGRectMake(0, 0, 2, 2), "")
        XCTAssertEqual(Balloon(volume: 5).frame, CGRectMake(0, 0, 3, 2), "")
        XCTAssertEqual(Balloon(volume: 7).frame, CGRectMake(0, 0, 3, 3), "")
        XCTAssertEqual(Balloon(volume: 8).frame, CGRectMake(0, 0, 3, 3), "")
    }
}
