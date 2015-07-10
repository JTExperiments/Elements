//
//  Water.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import Foundation

public class Water : Compound {

    public let liter : CGFloat

    public init(liter: CGFloat) {
        self.liter = liter
    }

    public override func sizeThatFits(size: CGSize) -> CGSize {
        if liter > size.width * size.height {
            warn("unable to contain liters:\(liter) in size:\(size). Leaking away...")
            return size
        } else if liter > size.width {
            var height = ceil(liter / size.width)
            return CGSizeMake(size.width, height)
        } else if liter > size.height {
            var width = ceil(liter / size.height)
            return CGSizeMake(width, size.height)
        } else {
            return size
        }
    }

    public override func intrinsicContentSize() -> CGSize {
        return CGSizeMake(liter, 1)
    }
    
}