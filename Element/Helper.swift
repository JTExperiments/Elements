//
//  Helper.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright © 2015 James Tang. All rights reserved.
//

import Foundation

public let CGPointMax = CGPointMake(CGFloat.max, CGFloat.max)
public let CGPointMin = CGPointMake(-CGFloat.max, -CGFloat.max)


public func min(lhs: CGPoint, _ rhs: CGPoint) -> CGPoint {
    let x = min(lhs.x, rhs.x)
    let y = min(lhs.y, rhs.y)
    return CGPointMake(x, y)
}

public func max(lhs: CGPoint, _ rhs: CGPoint) -> CGPoint {
    let x = max(lhs.x, rhs.x)
    let y = max(lhs.y, rhs.y)
    return CGPointMake(x, y)
}

public func diff(lhs: CGPoint, _ rhs: CGPoint) -> CGSize {
    return CGSizeMake(lhs.x - rhs.x, lhs.y - rhs.y)
}
