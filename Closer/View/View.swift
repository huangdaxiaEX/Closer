//
//  View.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/23.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit
import RxSwift

class View: UIView {
    var showBounds: Bool = false
    lazy var disposeBag = DisposeBag()
    let ratio = UIScreen.main.bounds.width / 375
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setup()
    }
    
    func setup() {
        backgroundColor = UIColor.white
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func draw(_ rect: CGRect) {
        if showBounds {
            let path = UIBezierPath(rect: rect)
            UIColor.red.setStroke()
            path.stroke()
        }
    }
}
