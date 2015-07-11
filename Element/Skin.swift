//
//  Skin.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import Foundation

public protocol Skin {
    var padding:Edge { get }
}

extension Skin {

    public func intrinsicContentSize() -> CGSize {
        return self.applyToSize(CGSizeZero)
    }

    public func applyToSize(size: CGSize) -> CGSize {
        let newSize = CGSizeMake(
            size.width + self.padding.width,
            size.height + self.padding.height
        )
        return newSize
    }
}