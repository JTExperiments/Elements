//
//  BareElement.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import Foundation

public class Compound: Element {

    public var frame : CGRect = CGRectNull
    public var elements : [Element] = []

    // MARK: - Element protocol

    public init(elements: [Element] = []) {
        self.elements = elements
    }

    public func sizeThatFits(size: CGSize) -> CGSize {
//        var rect : CGRect = CGRectNull
//        for (index, element) in elements.enumerate() {
//            var elementRect = CGRectZero
//            if index == 0 {
//                elementRect.size = size
//            }
//            rect = CGRectUnion(rect, element.frameThatFits(elementRect))
//        }
//        return rect.size
//        return size
        return self.intrinsicContentSize()
    }

    public func intrinsicContentSize() -> CGSize {
        var rect = CGRectZero
        for element in elements {
            rect = CGRectUnion(rect, element.frameThatFits(self.frame))
        }
        return rect.size
//        return CGSizeMake(-1, -1)
    }

    public func addElement(element: Element) {
        self.elements.append(element)
    }

}

