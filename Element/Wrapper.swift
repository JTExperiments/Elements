//
//  Wrapper.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright © 2015 James Tang. All rights reserved.
//

import Foundation

public class Wrapper : Compound {

    public override func sizeThatFits(size: CGSize) -> CGSize {
        return self.intrinsicContentSize()
    }

    public override func intrinsicContentSize() -> CGSize {
        var rect = CGRectZero
        for element in elements {
            rect = CGRectUnion(rect, element.frameThatFits(self.bounds))
        }
        return rect.size
    }
}