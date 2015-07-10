//
//  TextSkeleton.swift
//  Skeleton
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import UIKit

public struct TextSkeleton : Skeleton {
    public var font : UIFont?
    public var text : String

    // MARK: - Skeleton protocol

    public func sizeThatFits(size: CGSize) -> CGSize {
        // override in subclass
        return self.contentSize
    }

    public func intrinsicContentSize() -> CGSize {
        return self.contentSize
    }

    // MARK: - Sizable protocol

    public var contentSize:CGSize = CGSizeZero

}