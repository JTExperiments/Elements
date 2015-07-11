//
//  Balloon.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright © 2015 James Tang. All rights reserved.
//

import Foundation

public class Balloon : Wrapper, Skinnable {

    public var padding : Edge = Edge()

    let volume : CGFloat

    public init(volume: CGFloat) {
        self.volume = volume
        super.init()
        let root : CGFloat = sqrt(volume)
        self.bounds = CGRectMake(0, 0, ceil(root), round(root))
    }

    public override func sizeThatFits(size: CGSize) -> CGSize {

        var bounds : CGRect = CGRectZero
        let containingSize = CGSizeMake(size.width - self.padding.width, size.height - self.padding.height)

        var requiredWidth : CGFloat = 0
        var requiredHeight : CGFloat = 0
        for (_, element) in elements.enumerate() {
            bounds = CGRectMake(
                self.padding.left,
                self.padding.top,
                containingSize.width,
                containingSize.height)
            let elementFrame = element.frameThatFits(bounds)
            requiredWidth = max(requiredWidth, CGRectGetWidth(elementFrame))
            requiredHeight = max(requiredHeight, CGRectGetHeight(elementFrame))
        }

        var newSize : CGSize = CGSizeZero
        if requiredWidth * requiredHeight > containingSize.width * containingSize.height {
            if containingSize.width >= requiredWidth {
                // Overflow
                newSize = CGSizeMake(min(requiredWidth, containingSize.width), max(containingSize.height, requiredHeight))
            } else {
                return self.intrinsicContentSize()
            }
        } else {
            // Underflow
            newSize = CGSizeMake(min(requiredWidth, containingSize.width), min(containingSize.height, requiredHeight))
        }

        return self.padding.applyToSize(newSize)
    }

    public override func intrinsicContentSize() -> CGSize {
        let compoundSize = super.intrinsicContentSize()
        let paddedSize = self.applyToSize(compoundSize)
        return paddedSize
    }

}