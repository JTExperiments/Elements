//
//  Edge.swift
//  Skeleton
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import Foundation

public struct Edge {

    public let left:CGFloat
    public let bottom:CGFloat
    public let right:CGFloat
    public let top:CGFloat

    public init(top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) {
        self.left = left
        self.bottom = bottom
        self.right = right
        self.top = top
    }
}