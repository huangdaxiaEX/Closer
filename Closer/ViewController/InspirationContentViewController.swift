//
//  InspirationContentViewController.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/25.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit

class InspirationContentViewController: ViewController {
    
    let tabBarView: InspirationTabBarView = InspirationTabBarView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        applyTransparentNavBar()
        
        view.addSubview(tabBarView)
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        tabBarView.snp.updateConstraints { (make) in
            make.left.right.bottom.equalTo(view)
            make.height.equalTo(49)
        }
    }
}
