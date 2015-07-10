//
//  EmbeddingSkeleton.swift
//  Skeleton
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import Foundation

public class EmbeddingSkeleton : BareSkeleton {

    public private (set) var skeleton : Skeleton

    public init(skeleton: Skeleton) {
        self.skeleton = skeleton
    }

}