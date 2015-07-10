//
//  Element.swift
//  Element
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import Foundation

public func speak<T>(thing: T) {
    println("Element: \(thing)")
}

public func warn<T>(thing: T) {
    println("ElementWarn: \(thing)")
}

public protocol Element {
    func intrinsicContentSize() -> CGSize
    func sizeThatFits(size:CGSize) -> CGSize
}

