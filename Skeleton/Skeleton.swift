//
//  Skeleton.swift
//  Skeleton
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import Foundation

public func speak<T>(thing: T) {
    println("Skeleton: \(thing)")
}

public func warn<T>(thing: T) {
    println("SkeletonWarn: \(thing)")
}

public protocol Skeleton {
    func intrinsicContentSize() -> CGSize
    func sizeThatFits(size:CGSize) -> CGSize
}

