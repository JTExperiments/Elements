//
//  Skin.swift
//  Skeleton
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import Foundation

public protocol Skin {
    var margin:Edge { get }
    var padding:Edge { get }
    var borderWidth:CGFloat { get }
}
