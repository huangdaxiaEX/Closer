//
//  ImageLabelBarItemView.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/25.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit
import SnapKit

class ImageLabelBarItemView: View {
    
    var isHighlight: Bool = false
    
    let label = UILabel.label(10, bold: false, textColor: UIColor(hex: 0x939393), alignment: .left, fitWidth: true)
    
    let imageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        
        return image
    } ()
    
    override func setup() {
        super.setup()
        
        addSubview(label)
        addSubview(imageView)
        
        setNeedsUpdateConstraints()
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        
        imageView.snp.updateConstraints { (make) in
            make.left.centerY.equalTo(self)
            make.width.height.equalTo(38)
        }
        
        label.snp.updateConstraints { (make) in
            make.centerY.equalTo(imageView)
            make.left.equalTo(imageView.snp.right).offset(8)
            make.right.equalTo(self)
            make.height.equalTo(12)
        }
    }
    
    func config(text: String, image: UIImage) {
        label.text = text
        imageView.image = image
    }

}
