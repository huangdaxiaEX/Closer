//
//  UILable+Factory.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/18.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit

extension UILabel {
    class func label(_ fontSize: CGFloat = 16, bold: Bool = false, textColor: UIColor = UIColor.white, alignment: NSTextAlignment = .left, fitWidth: Bool = true) -> UILabel {
        let label = UILabel()
        if bold {
            label.font = UIFont.boldSystemFont(ofSize: fontSize)
        } else {
            label.font = UIFont.systemFont(ofSize: fontSize)
        }
        
        label.textColor = textColor
        label.textAlignment = alignment
        label.text = "Label"
        label.adjustsFontSizeToFitWidth = fitWidth
        
        return label
    }
    
}
