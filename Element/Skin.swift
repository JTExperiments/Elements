//
//  Skin.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import Foundation

public protocol Skin : Element {
    var padding:Edge { get }
}

extension Skin {

    // Element

    public func intrinsicContentSize() -> CGSize {
        return self.applyToSize(self.frame.size)
    }

    public func applyToSize(size: CGSize) -> CGSize {
        let newSize = CGSizeMake(
            size.width + self.padding.width,
            size.height + self.padding.height
        )
        return newSize
    }

    public func frameThatFits(frame: CGRect) -> CGRect {
        var newFrame = self.frame
        newFrame.size = self.applyToSize(newFrame.size)
        return newFrame
    }
}