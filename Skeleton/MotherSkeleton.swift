//
//  MotherSkeleton.swift
//  Skeleton
//
//  Created by James Tang on 11/7/15.
//  Copyright (c) 2015 James Tang. All rights reserved.
//

import Foundation

public class MotherSkeleton : FlexibleSkeleton {

    public private (set) var childSkeleton: [Skeleton] = []

    public func addSkeleton(skeleton: Skeleton) {
        self.addSkeleton(skeleton)
    }

}