//
//  RecommandCollectViewCell.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/24.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit
import SnapKit

struct RecommandCollectViewCellViewModel {
    let headerImage: UIImage
    let nameText: String
    let timeText: String
    let contentImage: UIImage
}

class RecommandTableViewCollectViewCell: UICollectionViewCell {
    static let identifier: String = "RecommandTableViewCollectViewCell"
    
    let contentImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        
        return image
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(contentImageView)
        contentImageView.layer.masksToBounds = true
        contentImageView.layer.cornerRadius = 5
        setNeedsUpdateConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        
        contentImageView.snp.updateConstraints { (make) in
            make.edges.equalTo(self)
        }
    }
    
    func config(image: UIImage) {
        contentImageView.image = image
    }
}


class RecommandCollectViewCell: UICollectionViewCell {
    
    static let identifier: String = "RecommandCollectViewCell"
    var viewModel: RecommandCollectViewCellViewModel?
    
    let imageLabelView = ImageLabelView()
    
    let contentImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        
        return image
    } ()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(contentImageView)
        addSubview(imageLabelView)
        contentImageView.layer.masksToBounds = true
        contentImageView.layer.cornerRadius = 5
        setNeedsUpdateConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        
        imageLabelView.snp.updateConstraints { (make) in
            make.top.left.right.equalTo(self)
            make.height.equalTo(36)
        }
        
        contentImageView.snp.updateConstraints { (make) in
            make.top.equalTo(imageLabelView.snp.bottom).offset(10)
            make.left.right.bottom.equalTo(self)
        }
    }
    
    func config(model: RecommandCollectViewCellViewModel) {
        self.viewModel = model
        
        imageLabelView.imageView.image = model.headerImage
        imageLabelView.topLabel.text = model.nameText
        imageLabelView.bottomLabel.text = model.timeText
        contentImageView.image = model.contentImage
    }
}
