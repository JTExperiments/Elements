//
//  BareElement.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import Foundation

public class Compound: Element {

    public var frame : CGRect = CGRectZero
    public var elements : [Element] = []

    // MARK: - Element protocol

    public init(elements: [Element] = []) {
        self.elements = elements
    }

    public func sizeThatFits(size: CGSize) -> CGSize {
        return self.frame.size
    }

    public func intrinsicContentSize() -> CGSize {
        return CGSizeMake(-1, -1)
    }

    public func addElement(element: Element) {
        self.elements.append(element)
    }

}

