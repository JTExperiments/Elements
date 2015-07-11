//
//  StoneTests.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright © 2015 James Tang. All rights reserved.
//

import XCTest
import Element
import UIKit

class StoneTests: XCTestCase {

    let stone = Stone(size: CGSizeMake(2, 3))

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testUIButton() {

        let label = UILabel(frame: CGRectMake(0, 0, 0, 0))
        label.text = "Something Strange"
        label.numberOfLines = 0

        speak("sizeThatFits {10000, 10000}: \(label.sizeThatFits(CGSizeMake(10000, 10000)))")
        speak("sizeThatFits {10, 100}: \(label.sizeThatFits(CGSizeMake(10, 100)))")
        speak("sizeThatFits {100, 10}: \(label.sizeThatFits(CGSizeMake(100, 10)))")
    }
    
    func testIntrinsicContentSize() {
        XCTAssertEqual(stone.intrinsicContentSize(), CGSizeMake(2, 3), "")
    }

    func testSizeThatFits() {
        XCTAssertEqual(stone.sizeThatFits(CGSizeMake(0, 0)), CGSizeMake(2, 3), "")
        XCTAssertEqual(stone.sizeThatFits(CGSizeMake(1, 9)), CGSizeMake(2, 3), "")
        XCTAssertEqual(stone.sizeThatFits(CGSizeMake(9, 1)), CGSizeMake(2, 3), "")
    }

    func testSizeThatFitsWithPadding() {
        stone.padding = Edge(top: 1, left: 2, bottom: 1, right: 2)
        XCTAssertEqual(stone.sizeThatFits(CGSizeMake(0, 0)), CGSizeMake(6, 5), "")
        XCTAssertEqual(stone.sizeThatFits(CGSizeMake(1, 9)), CGSizeMake(6, 5), "")
        XCTAssertEqual(stone.sizeThatFits(CGSizeMake(9, 1)), CGSizeMake(6, 5), "")
        XCTAssertEqual(stone.sizeThatFits(CGSizeMake(9, 9)), CGSizeMake(6, 5), "")
    }
    
}
