//
//  CGFloat+Math.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/18.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import CoreGraphics

extension CGFloat {
    var radians: CGFloat {
        return (self / 180) * CGFloat(Double.pi)
    }
    
    var floatValue: Float {
        return Float(self)
    }
    
    func cosValue() -> CGFloat {
        return cos(self)
    }
    
    func sinValue() -> CGFloat {
        return sin(self)
    }
    
}
