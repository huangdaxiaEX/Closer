//
//  ViewController.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/14.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit
import RxSwift
import DynamicColor
import RxCocoa

class ViewController: UIViewController {
    typealias KeyboardFrameChangeActionClosure = (_ duration: Int, _ curev: UInt, _ keyboardEndFrame: NSValue) -> Void
    
    let ratio: CGFloat = UIScreen.main.bounds.width / 375
    let screenWidth = UIScreen.main.bounds.width
    
    var keyboardSubscription: RxSwift.Disposable?
    var keyboardFrameChange: KeyboardFrameChangeActionClosure?
    
    var shouldDismissKeyboardWhenTapped = false
    var shouldShowDismissBarButtonWhenNeeded = true
    var shouldShowOriginBarColorWhenDisappear = false
    
    var tapBackground: UITapGestureRecognizer?
    
    lazy var backgroundImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    } ()
    
    lazy var topMargin: CGFloat = { [unowned self] in
        if self.navigationController?.navigationBar.isHidden == true {
            return 0
        }
        return 64
        } ()
    
    lazy var disposeBag = DisposeBag()
    
    fileprivate var navBarVisualEffectView: UIVisualEffectView?
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        view.addSubview(backgroundImageView)
        
        if shouldDismissKeyboardWhenTapped {
            addTapGestureToDismissKeyboard()
        }
        
        if shouldShowDismissBarButtonWhenNeeded {
            setupDismissBarButtonItem()
        }
        
        customizeBackBarButtonItem()
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        backgroundImageView.snp.makeConstraints { (make) in
            make.edges.equalTo(view)
        }
    }
    
    fileprivate var inset = false
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        if automaticallyAdjustsScrollViewInsets && inset == false {
            inset = true
            if view.subviews.count > 1 {
                // root view is backgroundImageView
                if let secondView = view.subviews[1] as? UIScrollView {
                    secondView.contentInset = UIEdgeInsets(top: (navigationController?.navigationBar.bounds.height ?? 0) + 20, left: 0, bottom: tabBarController?.tabBar.bounds.height ?? 0, right: 0)
                    secondView.contentOffset = CGPoint(x: 0, y: -secondView.contentInset.top)
                }
            }
        }
        
        view.setNeedsUpdateConstraints()
        
        if let keyboardFrameChange = keyboardFrameChange {
            keyboardSubscription?.dispose()
            keyboardSubscription = NotificationCenter.default.rx.notification(NSNotification.Name.UIKeyboardWillChangeFrame)
                .subscribe(onNext: { note in
                    guard let userInfo = note.userInfo,
                        let duration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as? Int,
                        let curve = userInfo[UIKeyboardAnimationCurveUserInfoKey] as? UInt,
                        let keyboardEndFrame = userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue
                        else {
                            return
                    }
                    keyboardFrameChange(duration, curve, keyboardEndFrame)
                })
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if shouldShowOriginBarColorWhenDisappear {
            let navigationBar = navigationController?.navigationBar
            navigationBar?.setBackgroundImage(nil, for: .default)
            navigationBar?.shadowImage = nil
        }
        keyboardSubscription?.dispose()
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .default
    }
    
    // MARK: - Utils
    
    func applyDarkNavBarByColor(_ color: UIColor) {
        applyNavBarByColor(color)
    }
    
    func applyNavBarByColor(_ color: UIColor, barStyle: UIBarStyle = .black, effectStyle: UIBlurEffectStyle = .dark, tintColor: UIColor = .white) {
        assert(self.navigationController != nil && self.navigationController != nil, "Method should be used in NavigationController's viewControllers")
        let navigationBar = navigationController?.navigationBar
        guard let navBar = navigationBar else {
            return
        }
        navBar.isTranslucent = true
        navBar.barStyle = barStyle
        navBar.tintColor = tintColor
        navBar.barTintColor = color
        shouldShowOriginBarColorWhenDisappear = false
    }
    
    func applyTransparentNavBar() {
        let navigationBar = navigationController?.navigationBar
        let image = UIImage()
        navigationBar?.setBackgroundImage(image, for: .default)
        navigationBar?.shadowImage = image
        navigationBar?.barStyle = .black
        navigationBar?.isTranslucent = true
        navigationBar?.tintColor = UIColor.white
        
        shouldShowOriginBarColorWhenDisappear = true
    }
    
    func customizeBackBarButtonItem() {
//        // back bar button
//        navigationItem.backBarButtonItem = UIBarButtonItem(title: " ", style: UIBarButtonItemStyle.plain, target: nil, action:nil)
//        var appearance: UIBarButtonItem
//        if #available (iOS 9.0, *) {
//            appearance = UIBarButtonItem.appearance(whenContainedInInstancesOf: [NavigationController.self])
//        } else {
//            appearance = UIBarButtonItem.my_appearanceWhenContained(in: NavigationController.self)
//        }
//        var backgroundImage = Images.ButtonBack
//        backgroundImage = backgroundImage.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: backgroundImage.size.width - 1, bottom: 0, right: 0))
//        appearance.setBackButtonBackgroundImage(backgroundImage.withRenderingMode(.alwaysTemplate), for: .normal, barMetrics: UIBarMetrics.default)
    }
    
    @discardableResult
    func setupDismissBarButtonItem() -> Bool {
//        if let _ = self.presentingViewController {
//            self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: Images.ButtonDismiss, style: .plain, target: self, action: #selector(ViewController.didPressDismissBarButtonItem))
//            return true
//        }
        
        return false
    }
    
    func addTapGestureToDismissKeyboard() {
        tapBackground = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard(_:)))
        tapBackground!.numberOfTouchesRequired = 1
        view.addGestureRecognizer(tapBackground!)
    }
    
    // MARK: - Actions
    
    func dismissKeyboard(_ gestureRecognizer: UITapGestureRecognizer) {
        log.verbose()
        view.endEditing(true)
    }
    
    func didPressDismissBarButtonItem() {
        log.verbose()
        view.endEditing(true)
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func customBack() {
        guard let _ = self.navigationController?.viewControllers[0] else {
            self.dismiss(animated: true, completion: nil)
            return
        }
        
        self.navigationController?.popViewController(animated: true)
    }
}
