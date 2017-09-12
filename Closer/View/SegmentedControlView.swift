//
//  SegmentedControlView.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/23.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit
import SnapKit

class SegmentedControlView: View {
    let bottomView = UIView()
    let control = UISegmentedControl(items: [Localizations.Focus, Localizations.Recommand])
    var bottomOffset: Constraint?
    var widthOffset: Constraint?
    var didClicked: ((_ index: Int) -> Void)?
    
    override func setup() {
        super.setup()
        frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 70)
        backgroundColor = UIColor.white
        bottomView.backgroundColor = UIColor.black
        
        let w = 140 * ratio
        control.setWidth(w, forSegmentAt: 0)
        control.setWidth(w, forSegmentAt: 1)
        
        control.setTitleTextAttributes([NSFontAttributeName: UIFont.systemFont(ofSize: 14), NSForegroundColorAttributeName: UIColor(hex: 0x939393)], for: UIControlState.normal)
        control.setTitleTextAttributes([NSFontAttributeName: UIFont.boldSystemFont(ofSize: 14), NSForegroundColorAttributeName: UIColor(hex: 0x000000)], for: UIControlState.selected)
        control.tintColor = UIColor.clear
        control.selectedSegmentIndex = 0
        control.addTarget(self, action: #selector(didChanged), for: .valueChanged)
        addSubview(control)
        
        addSubview(bottomView)
        
        let margin = (UIScreen.main.bounds.width - 280 * ratio) / 2
        control.snp.makeConstraints { (make) in
            make.edges.equalTo(self).inset(UIEdgeInsetsMake(38, margin, 7, margin))
        }
        
        bottomView.snp.makeConstraints { (make) in
            bottomOffset = make.centerX.equalTo(control).offset(-70 * ratio).constraint
            widthOffset = make.width.equalTo(40).constraint
            make.height.equalTo(2)
            make.bottom.equalTo(self).offset(-5)
        }
    }
    
    func didChanged() {
        let ma = 70 * ratio
        let offset = control.selectedSegmentIndex == 0 ? -ma : ma
        
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.41, initialSpringVelocity: 0, options: [], animations: {
            self.bottomOffset?.update(offset: offset)
            self.layoutSubviews()
        }, completion: nil)
        didClicked?(control.selectedSegmentIndex)
    }
    
    func scrollWidthOffset(offset: CGFloat) {
        self.widthOffset?.update(offset: offset + 40)
        self.bottomOffset?.update(offset: -70 * ratio + offset / 2)
    }
    
}
