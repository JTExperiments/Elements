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
        if liter + self.padding.volume > size.width * size.height {
            warn("unable to contain liters:\(liter) in size:\(size). Leaking away...")
            return CGSizeMake(
                max(size.width, self.padding.width),
                max(size.height, self.padding.height)
            )
        } else if liter > size.width || self.padding.width > size.width {
            let height = min(ceil(liter / size.width) + self.padding.height, size.height)
            let width = max(size.width, self.padding.width)
            return CGSizeMake(width, height)
        } else if liter > size.height {
            let width = ceil(liter / size.height)
            return CGSizeMake(width, size.height)
        } else {
            return size
        }
    }

    public override func intrinsicContentSize() -> CGSize {
        return CGSizeMake(liter + self.padding.width, 1 + self.padding.height)
    }
    
}