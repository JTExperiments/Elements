//
//  Block.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright © 2015 James Tang. All rights reserved.
//

import Foundation

public class Stone : Element, Skin {

    private let size : CGSize
    public var padding : Edge = Edge()
    public var frame : CGRect = CGRectZero

    public init(size: CGSize) {
        self.size = size
        self.frame = CGRectMake(0, 0, size.width, size.height)
    }

    public func sizeThatFits(size: CGSize) -> CGSize {
        return self.intrinsicContentSize()
    }

    public func intrinsicContentSize() -> CGSize {
        return self.applyToSize(self.size)
    }

}
