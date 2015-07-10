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

    func testPadding() {
        compound.padding = Edge(top: 1, left: 2, bottom:1, right: 2)
        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(10, 10)), CGSizeMake(4, 2), "")
        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(0, 0)), CGSizeMake(0, 0), "")
        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(2, 6)), CGSizeMake(2, 2), "")
        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(1, 6)), CGSizeMake(1, 2), "")
        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(6, 2)), CGSizeMake(4, 2), "")
        XCTAssertEqual(compound.sizeThatFits(CGSizeMake(6, 1)), CGSizeMake(4, 1), "")
    }

}
