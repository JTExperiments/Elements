//
//  Block.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright © 2015 James Tang. All rights reserved.
//

import Foundation

public class Stone : Skinnable {

    private let size : CGSize
    public var padding : Edge = Edge()
    public var bounds : CGRect = CGRectZero

    public init(size: CGSize) {
        self.size = size
        self.bounds = CGRectMake(0, 0, size.width, size.height)
    }

    public func sizeThatFits(size: CGSize) -> CGSize {
        return self.intrinsicContentSize()
    }

}
