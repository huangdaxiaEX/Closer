//
//  Button.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/24.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit

class Button: UIButton {
    let animationDuration: TimeInterval = 0.15
    
    var shouldDimWhenDisabled = true
    var shouldAnimateWhenStateChanged = true
    
    override var isEnabled: Bool {
        didSet {
            setEnabled(isEnabled, animated: shouldAnimateWhenStateChanged)
        }
    }
    
    // MARK: - LifeCycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setup()
    }
    
    override var intrinsicContentSize : CGSize {
        return CGSize(width: 280, height: 44)
    }
    
    // MARK: - Public
    
    func setEnabled(_ enabled: Bool, animated: Bool) {
        super.isEnabled = enabled
        if !shouldDimWhenDisabled {
            return
        }
        let alpha: CGFloat = enabled ? 1.0 : 0.5
        UIView.animate(withDuration: animationDuration, animations: { () -> Void in
            self.alpha = alpha
        })
    }
    
    // MARK: - Private
    
    fileprivate func setup() {
        isExclusiveTouch = true
    }
}

class FlatButton: Button {
    override var isSelected: Bool {
        didSet {
            setSelected(isSelected, animated: shouldAnimateWhenStateChanged)
        }
    }
    
    override var isHighlighted: Bool {
        didSet {
            setHighlighted(isHighlighted, animated: shouldAnimateWhenStateChanged)
        }
    }
    
    fileprivate var backgroundColors = [UInt: UIColor]()
    fileprivate var borderColors = [UInt: UIColor]()
    
    fileprivate override func setup() {
        titleLabel?.font = UIFont.systemFont(ofSize: 13)
        
        addConstraint(NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal, toItem: titleLabel, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal, toItem: titleLabel, attribute: .centerY, multiplier: 1, constant: 0))
        
        let layer = self.layer
        layer.masksToBounds = true
        layer.borderWidth = 1.0
    }
    
    // MARK: - Public
    
    override func setEnabled(_ enabled: Bool, animated: Bool) {
        super.setEnabled(enabled, animated: animated)
        changeColorsForStateChangeAnimated(animated)
    }
    
    func setBackgroundColor(_ backgroundColor: UIColor, forState state: UIControlState, animated: Bool = false) {
        backgroundColors[state.rawValue] = backgroundColor
        if state == self.state {
            changeColorsForStateChangeAnimated(animated)
        }
    }
    
    func setBorderColor(_ borderColor: UIColor, forState state: UIControlState, animated: Bool = false) {
        borderColors[state.rawValue] = borderColor
        if state == self.state {
            changeColorsForStateChangeAnimated(animated)
        }
    }
    
    func setSelected(_ selected: Bool, animated: Bool = false) {
        super.isSelected = selected
        changeColorsForStateChangeAnimated(animated)
    }
    
    func setHighlighted(_ highlighted: Bool, animated: Bool = false) {
        super.isHighlighted = highlighted
        changeColorsForStateChangeAnimated(animated)
    }
    
    // MARK: - Private
    
    fileprivate func changeColorsForStateChangeAnimated(_ animated: Bool) {
        changeBackgroundColorForStateChangeAnimated(animated)
        changeBoarderColorForStateChangeAnimated(animated)
    }
    
    fileprivate func changeBackgroundColorForStateChangeAnimated(_ animated: Bool) {
        if layer.backgroundColor == nil {
            layer.backgroundColor = UIColor.clear.cgColor
        }
        
        guard let color = backgroundColors[self.state.rawValue] else {
            return
        }
        
        if color == UIColor(cgColor: layer.backgroundColor!) {
            return
        }
        
        if animated {
            animateLayer(layer, fromColor: layer.backgroundColor!, toColor: color.cgColor, forKey: "backgroundColor")
        }
        layer.backgroundColor = color.cgColor
    }
    
    fileprivate func changeBoarderColorForStateChangeAnimated(_ animated: Bool) {
        if layer.borderColor == nil {
            layer.borderColor = UIColor.clear.cgColor
        }
        
        guard let color = borderColors[self.state.rawValue] else {
            return
        }
        
        if color == UIColor(cgColor: layer.borderColor!) {
            return
        }
        
        if animated {
            animateLayer(layer, fromColor: layer.borderColor!, toColor: color.cgColor, forKey: "borderColor")
        }
        layer.borderColor = color.cgColor
    }
    
    fileprivate func animateLayer(_ layer: CALayer, fromColor: CGColor, toColor: CGColor, forKey: String) {
        let fade = CABasicAnimation()
        fade.fromValue = fromColor
        fade.toValue = toColor
        fade.duration = animationDuration
        layer.add(fade, forKey: forKey)
    }
    
}
