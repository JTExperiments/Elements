//
//  BareElement.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import Foundation

public class Compound: Element {

    // MARK: - Skin protocol

    public var margin:Edge = Edge()
    public var padding:Edge = Edge()

    // MARK: - Element protocol

    public func sizeThatFits(size: CGSize) -> CGSize {
        return CGSizeZero
    }

    public func intrinsicContentSize() -> CGSize {
        return CGSizeZero
    }

    
}

