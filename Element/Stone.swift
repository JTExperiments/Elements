//
//  Block.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright © 2015 James Tang. All rights reserved.
//

import Foundation

public class Stone : Compound {

    private let size : CGSize

    public init(size: CGSize) {
        self.size = size
    }

    public override func sizeThatFits(size: CGSize) -> CGSize {
        let contentSize = self.intrinsicContentSize()
        return CGSizeMake(contentSize.width + padding.width, contentSize.height + padding.height)
    }

    public override func intrinsicContentSize() -> CGSize {
        return self.size
    }
}
