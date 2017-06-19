//
//  UIButton+Image.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/18.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit

extension UIButton {
    class func button(with normal: UIImage, highlighted: UIImage? = nil, selected: UIImage? = nil, backgroundImage: UIImage? = nil) -> UIButton {
        let button = UIButton()
        button.setBackgroundImage(backgroundImage, for: .normal)
        button.imageView?.frame = button.bounds
        button.setImage(normal, for: .normal)
        button.setImage(highlighted, for: .highlighted)
        button.setImage(selected, for: .selected)
        button.frame = CGRect(x: 0, y: 0, width: backgroundImage?.size.width ?? normal.size.width, height: backgroundImage?.size.height ?? normal.size.height)
        
        return button
    }
    
}
