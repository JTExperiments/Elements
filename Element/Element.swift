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

public protocol Element : class {
    var bounds : CGRect { get set }
    weak var parent : Compound? { get set }
    func intrinsicContentSize() -> CGSize
    func sizeThatFits(size:CGSize) -> CGSize
    func frameThatFits(frame: CGRect) -> CGRect
    func info() -> String
}

extension Element {
    public func frameThatFits(bounds: CGRect) -> CGRect {
        return self.bounds
    }

    internal func countParents() -> Int {
        var count : Int = 0
        var element : Element = self
        while let parent = element.parent {
            count++
            element = parent
        }
        return count
    }

    internal func makeInfo() -> String {
        var whiteSpaces : String = ""
        for _ in 0..<self.countParents() {
            whiteSpaces += "    "
        }
        let className = ("\(self.dynamicType)" as NSString).componentsSeparatedByString(".").last ?? "\(self.dynamicType)"
        let desc = "\(whiteSpaces)\(className): \(bounds)"
        return desc
    }

    public func info() -> String {
        return self.makeInfo()
    }

    public func didMoveToParent(compound: Compound) {
        self.parent = compound
    }
}