//
//  Color.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/18.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import Foundation
import DynamicColor

class Color {
    var cellSeparator: UIColor { return UIColor(hex: 0x6b6b6b) }
    
}


extension UIColor {
    func transparent(by alpha: CGFloat) -> UIColor {
        let compents = toRGBAComponents()
        
        return UIColor.init(r: compents.r, g: compents.g, b: compents.b, a: alpha)
    }
    
}
