//
//  ImageLabelView.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/24.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit
import SnapKit

class ImageLabelView: View {
    var imageSize: CGSize = CGSize(width: 36, height: 36) {
        didSet {
            imageView.layer.cornerRadius = imageSize.width / 2
        }
    }
    
    let topLabel: UILabel = UILabel.label(13, bold: false, textColor: UIColor.black, alignment: .left, fitWidth: true)
    
    let bottomLabel: UILabel = UILabel.label(9, bold: false, textColor: UIColor(hex: 0x939393), alignment: .left, fitWidth: true)
    
    let imageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        
        return image
    } ()
    
    override func setup() {
        super.setup()
        
        addSubview(topLabel)
        addSubview(bottomLabel)
        addSubview(imageView)
        imageView.layer.cornerRadius = imageSize.width / 2
        imageView.layer.masksToBounds = true
        
        setNeedsUpdateConstraints()
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        
        imageView.snp.updateConstraints { (make) in
            make.top.left.equalTo(self)
            make.width.height.equalTo(imageSize.width)
        }
        
        topLabel.snp.updateConstraints { (make) in
            make.left.equalTo(imageView.snp.right).offset(10)
            make.right.equalTo(self)
            make.bottom.equalTo(imageView.snp.centerY)
            make.height.equalTo(15)
        }
        
        bottomLabel.snp.updateConstraints { (make) in
            make.left.right.equalTo(topLabel)
            make.top.equalTo(topLabel.snp.bottom)
            make.height.equalTo(11)
        }
    }
    
}
