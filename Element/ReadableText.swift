//
//  TextElement.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import UIKit

public struct ReadableText : Element {

    public var font : UIFont?
    public var text : String
    public var bounds : CGRect = CGRectNull

    // MARK: - Element protocol

    public func sizeThatFits(size: CGSize) -> CGSize {
        // override in subclass
        return CGSizeZero
    }

    public func intrinsicContentSize() -> CGSize {
        return CGSizeZero
    }

}