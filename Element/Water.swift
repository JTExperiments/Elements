//
//  Water.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import Foundation

public class Water : Element {

    public var bounds : CGRect = CGRectZero
    public let liter : CGFloat

    public init(liter: CGFloat) {
        self.liter = liter
        self.bounds = CGRectMake(0, 0, liter, 1)
    }

    public func sizeThatFits(size: CGSize) -> CGSize {
        if liter > size.width * size.height {
            warn("unable to contain liters:\(liter) in size:\(size). Leaking away...")
            return self.intrinsicContentSize()
        } else if liter > size.width {
            let height = ceil(liter / size.width)
            return CGSizeMake(size.width, height)
        } else if liter > size.height {
            let width = ceil(liter / size.height)
            return CGSizeMake(width, size.height)
        } else {
            return size
        }
    }

    public func intrinsicContentSize() -> CGSize {
        return CGSizeMake(liter, 1)
    }

    public func frameThatFits(bounds: CGRect) -> CGRect {
        let size = sizeThatFits(bounds.size)
        let newFrame = CGRectMake(
            self.bounds.origin.x,
            self.bounds.origin.y,
            size.width,
            size.height)
        speak("Water: frameThatFits: old:\(bounds.size), new: \(newFrame)")
        return newFrame
    }

}