//
//  LooksViewController.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/23.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit

class LooksViewController: ViewController {
    let v = ImageLabelView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(v)
        
        v.snp.makeConstraints { (make) in
            make.center.equalTo(view)
            make.width.equalTo(200)
            make.height.equalTo(80)
        }
        v.bottomLabel.text = "bottom"
        v.topLabel.text = "top"
        v.imageView.image = Images.Tab_comment_selected
        v.imageSize = CGSize(width: 80, height: 80)
    }
}
