//
//  Skinnable.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import Foundation

public protocol Skinnable : Element {
    var padding:Edge { get }
}

extension Skinnable {

    // Element

    public func intrinsicContentSize() -> CGSize {
        return self.applyToSize(self.bounds.size)
    }

    public func applyToSize(size: CGSize) -> CGSize {
        let newSize = CGSizeMake(
            size.width + self.padding.width,
            size.height + self.padding.height
        )
        return newSize
    }

    public func frameThatFits(bounds: CGRect) -> CGRect {
        var newFrame = self.bounds
        newFrame.size = self.applyToSize(newFrame.size)
        return newFrame
    }
}