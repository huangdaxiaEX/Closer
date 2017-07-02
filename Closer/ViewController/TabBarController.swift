//
//  TabBarController.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/18.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    init() {
        super.init(nibName: nil, bundle: nil)
        
        setupViewControllers()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupAppearance()
    }
    
    fileprivate func setupViewControllers() {
        let inspiration = InspirationViewController()
        inspiration.tabBarItem.title = Localizations.Inspiration
        inspiration.tabBarItem.selectedImage = Images.TabInspirationSelected
        inspiration.tabBarItem.image = Images.TabInspiration
        
        let message = MessageViewController()
        message.tabBarItem.title = Localizations.Message
        message.tabBarItem.selectedImage = Images.TabMessageSelected
        message.tabBarItem.image = Images.TabMessage
        
        let looks = LooksViewController()
        looks.tabBarItem.title = Localizations.Looks
        looks.tabBarItem.selectedImage = Images.TabLooskSelected
        looks.tabBarItem.image = Images.TabLooks
        
        let closet = ClosetViewController()
        closet.tabBarItem.title = Localizations.Closet
        closet.tabBarItem.selectedImage = Images.TabClosetSelected
        closet.tabBarItem.image = Images.TabCloset
        
        viewControllers = [inspiration, message, looks, closet]
    }
    
    fileprivate func setupAppearance() {
        // blur
        let blurEffect = UIBlurEffect(style: .light)
        let visualEffectView = UIVisualEffectView(effect: blurEffect)
        visualEffectView.autoresizingMask = [UIViewAutoresizing.flexibleHeight, UIViewAutoresizing.flexibleWidth]
        visualEffectView.frame = tabBar.bounds
        tabBar.insertSubview(visualEffectView, at: 0)
        
        tabBar.backgroundImage = UIImage.image(with: .white)
        
        // shadow image
        tabBar.shadowImage = UIImage.image(with: UIColor(hex: 0xE2BCAF).withAlphaComponent(0.3))
        
        tabBar.tintColor = UIColor(hex: 0xE2BCAF)
    }

}
