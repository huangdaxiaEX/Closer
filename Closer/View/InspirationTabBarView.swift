//
//  InspirationTabBarView.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/25.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit

class InspirationTabBarView: View {
    let bar1 = ImageLabelBarItemView()
    let bar2 = ImageLabelBarItemView()
    let bar3 = ImageLabelBarItemView()
    
    override func setup() {
        super.setup()
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(didTapped1))
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(didTapped2))
        let tap3 = UITapGestureRecognizer(target: self, action: #selector(didTapped3))
        bar1.addGestureRecognizer(tap1)
        bar2.addGestureRecognizer(tap2)
        bar3.addGestureRecognizer(tap3)
        
        bar1.config(text: Localizations.Comment, image: Images.Tab_comment)
        bar2.config(text: Localizations.Like, image: Images.Tab_like)
        bar3.config(text: Localizations.Collect, image: Images.Tab_favorite)
        addSubview(bar1)
        addSubview(bar2)
        addSubview(bar3)
        
        setNeedsUpdateConstraints()
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        
        let font = bar2.label.font!
        
        let width1 = Localizations.Comment.width(with: font)
        let width2 = Localizations.Like.width(with: font)
        let width3 = Localizations.Collect.width(with: font)
        bar2.snp.updateConstraints { (make) in
            make.height.centerY.centerX.equalTo(self)
            make.width.equalTo(50 + width2)
        }
        
        bar1.snp.updateConstraints { (make) in
            make.left.equalTo(self).offset(34)
            make.centerY.equalTo(self)
            make.height.equalTo(bar2)
            make.width.equalTo(50 + width1)
        }
        
        bar3.snp.updateConstraints { (make) in
            make.right.equalTo(self).offset(-34)
            make.centerY.equalTo(self)
            make.height.equalTo(bar2)
            make.width.equalTo(50 + width3)
        }
    }
    
    func didTapped1() {
        didTapped(index: 1)
    }
    
    func didTapped2() {
        didTapped(index: 2)
    }
    
    func didTapped3() {
        didTapped(index: 3)
    }
    
    func didTapped(index: Int) {
        let view: ImageLabelBarItemView
        let image: UIImage
        switch index {
        case 1:
            view = bar1
            if view.isHighlight {
                image = Images.Tab_comment
            } else {
                image = Images.Tab_comment_selected
            }
        case 2:
            view = bar2
            if view.isHighlight {
                image = Images.Tab_like
            } else {
                image = Images.Tab_like_selected
            }
        case 3:
            view = bar3
            if view.isHighlight {
                image = Images.Tab_favorite
            } else {
                image = Images.Tab_favorite_selected
            }
        default:
            view = bar3
            image = Images.Tab_favorite_selected
        }
        
        view.isHighlight = !view.isHighlight
        UIView.animate(withDuration: 0.25, animations: { 
            view.imageView.transform = CGAffineTransform.init(scaleX: 1.2, y: 1.2)
            view.imageView.image = image
        }) { (finished) in
            if finished {
                view.imageView.transform = CGAffineTransform.identity
            }
        }
    }
}
