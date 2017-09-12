//
//  RecommandTableViewCell.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/24.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit
import SnapKit

struct RecommandTableViewCellViewModel {
    let headImage: UIImage
    let nameText: String
    let infoText: String
}

class RecommandTableViewCell: UITableViewCell {
    static let identifier: String = "RecommandTableViewCell"
    
    var viewModel: RecommandTableViewCellViewModel?
    let imageLabelView: ImageLabelView = ImageLabelView()
    let button: FlatButton = FlatButton()
    
    lazy var collectionView: UICollectionView = {
        let layout = HKLayout()
        layout.sectionLeft = 0
        layout.sectionRight = 0
        layout.lineSpacing = 5
        layout.delegate = self
        let collect = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collect.backgroundColor = UIColor.white
        collect.delegate = self
        collect.dataSource = self
        collect.isScrollEnabled = false
        collect.register(RecommandTableViewCollectViewCell.self, forCellWithReuseIdentifier: RecommandTableViewCollectViewCell.identifier)
        
        return collect
    } ()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setup() {
        addSubview(imageLabelView)
        addSubview(button)
        addSubview(collectionView)
        button.setTitle(Localizations.Follow, for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 15
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(buttonDidPressed), for: .touchUpInside)
        imageLabelView.imageSize = CGSize(width: 48, height: 48)
        setNeedsUpdateConstraints()
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        
        imageLabelView.snp.updateConstraints { (make) in
            make.left.equalTo(self).offset(40)
            make.top.equalTo(self)
            make.height.equalTo(48)
            make.width.equalTo(180)
        }
        
        button.snp.updateConstraints { (make) in
            make.right.equalTo(self).offset(-40)
            make.top.equalTo(self).offset(10)
            make.height.equalTo(30)
            make.width.equalTo(80)
        }
        
        collectionView.snp.updateConstraints { (make) in
            make.left.equalTo(self).offset(40)
            make.right.equalTo(self).offset(-40)
            make.bottom.equalTo(self)
            make.top.equalTo(imageLabelView.snp.bottom).offset(10)
        }
    }
    
    func config(model: RecommandTableViewCellViewModel) {
        self.viewModel = model
        imageLabelView.imageView.image = model.headImage
        imageLabelView.topLabel.text = model.nameText
        imageLabelView.bottomLabel.text = model.infoText
    }
    
    func buttonDidPressed() {
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitle(Localizations.Unfollow, for: .normal)
        button.setBorderColor(UIColor.clear, forState: .normal)
        button.setBackgroundColor(UIColor(hex:0xE2BCAF), forState: .normal)
    }
    
}

extension RecommandTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    //MARK: UICollectionViewDelegate
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        collectionView.deselectItem(at: indexPath, animated: true)
//    }
    
    //MARK: UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecommandTableViewCollectViewCell.identifier, for: indexPath) as? RecommandTableViewCollectViewCell else {
            fatalError("RecommandTableViewCollectViewCell is nil")
        }
        let i = indexPath.row % 11 + 1
        let sn = "H\(i)"
        
        let img = UIImage(named: sn)!
        cell.config(image: img)
        cell.contentView.clipsToBounds = true
        cell.contentView.layer.cornerRadius = 5
        return cell
    }
    
}

extension RecommandTableViewCell: HKLayoutDelegate {
    func numberOfColumn(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout: HKLayout, at indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 1 {
            return 120
        }
        let height = arc4random() % 30 + arc4random() % 50 + arc4random() % 50
        
        return CGFloat(height)
    }
    
}
