//
//  BareElement.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import Foundation

public class Compound: Element {

    public var elements : [Element] = []

    // MARK: - Skin protocol

    public var margin:Edge = Edge()
    public var padding:Edge = Edge()

    // MARK: - Element protocol

    public init(elements: [Element] = []) {
        self.elements = elements
    }

    public func sizeThatFits(size: CGSize) -> CGSize {
        let fittingSize = CGSizeMake(
            min(padding.width, size.width),
            min(padding.height, size.height)
        )
        return fittingSize
    }

    public func intrinsicContentSize() -> CGSize {
        return CGSizeZero
    }

    public func addElement(element: Element) {
        self.elements.append(element)
    }

}

