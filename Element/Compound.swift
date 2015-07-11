//
//  BareElement.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import Foundation

public class Compound: Element, CustomStringConvertible {

    public var bounds : CGRect = CGRectZero
    public private (set) var elements : [Element] = []
    public weak var parent : Compound?

    // MARK: - Element protocol

    public init(elements: [Element] = []) {
        self.elements = elements
        for element in elements {
            element.didMoveToParent(self)
        }
    }

    public func sizeThatFits(size: CGSize) -> CGSize {
        return self.bounds.size
    }

    public func intrinsicContentSize() -> CGSize {
        return CGSizeMake(-1, -1)
    }

    public func addElement(element: Element) {
        self.elements.append(element)
        element.didMoveToParent(self)
    }

    public var description : String {
        get {
            return info()
        }
    }

    public func info() -> String {
        var desc : String = makeInfo()
        for child in self.elements {
            desc += "\n\(child.info())"
        }
        return desc
    }

}

