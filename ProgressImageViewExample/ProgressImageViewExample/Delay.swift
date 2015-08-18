//
//  Delay.swift
//  ProgressImageViewExample
//
//  Created by Pablo Villar on 8/14/15.
//  Copyright (c) 2015 SQOR. All rights reserved.
//

import Foundation

public func delay(delay:Double, closure:()->()) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}
