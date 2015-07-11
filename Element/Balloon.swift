//
//  Balloon.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright © 2015 James Tang. All rights reserved.
//

import Foundation

public class Balloon : Compound, Skin {

    public var padding : Edge = Edge()

    let volume : CGFloat

    public init(volume: CGFloat) {
        self.volume = volume
        super.init()
        let root : CGFloat = sqrt(volume)
        self.frame = CGRectMake(0, 0, ceil(root), round(root))
    }

    public override func sizeThatFits(size: CGSize) -> CGSize {
        let size = super.sizeThatFits(size)
        return size
    }

    public override func intrinsicContentSize() -> CGSize {
        let compoundSize = super.intrinsicContentSize()
        let paddedSize = self.applyToSize(compoundSize)
        return paddedSize
    }

}