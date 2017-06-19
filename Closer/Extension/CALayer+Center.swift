//
//  CALayer+Center.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/18.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import QuartzCore

extension CALayer {
    var center: CGPoint {
        return CGPoint(x: bounds.width * 0.5, y: bounds.height * 0.5)
    }
    
}
