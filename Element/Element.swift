//
//  Element.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import Foundation

public func speak<T>(thing: T) {
    print("Element: \(thing)")
}

public func warn<T>(thing: T) {
    print("ElementWarn: \(thing)")
}

public protocol Element {
    var frame : CGRect { get set }
    func intrinsicContentSize() -> CGSize
    func sizeThatFits(size:CGSize) -> CGSize
    func frameThatFits(frame: CGRect) -> CGRect
}

extension Element {
    public func frameThatFits(frame: CGRect) -> CGRect {
        return self.frame
    }
}