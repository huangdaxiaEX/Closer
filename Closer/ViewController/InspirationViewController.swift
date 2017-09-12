//
//  InspirationViewController.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/23.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit
import SnapKit

class InspirationViewController: ViewController {
    
    let collectView: UICollectionView = {
        let flow = UICollectionViewFlowLayout()
        flow.scrollDirection = .horizontal
        let collect = UICollectionView(frame: .zero, collectionViewLayout: flow)
        collect.backgroundColor = .white
        collect.bounces = false
        collect.isPagingEnabled = true
        collect.clipsToBounds = true
        collect.showsHorizontalScrollIndicator = false
        collect.register(InspirationCollectionTableViewCell.self, forCellWithReuseIdentifier: InspirationCollectionTableViewCell.identifier)
        collect.register(InspirationCollectionViewCell.self, forCellWithReuseIdentifier: InspirationCollectionViewCell.identifier)
        return collect
    } ()
    
    let header = SegmentedControlView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectView.delegate = self
        collectView.dataSource = self
        view.addSubview(header)
        view.addSubview(collectView)
    
        header.didClicked = { [weak self] index in
            self?.collectView.scrollToItem(at: IndexPath(row: index, section: 0), at: .right, animated: true)
        }
        
        header.snp.makeConstraints { (make) in
            make.top.left.right.equalTo(view)
        }
        collectView.snp.makeConstraints { (make) in
            make.edges.equalTo(view).inset(UIEdgeInsetsMake(90, 0, 0, 0))
        }
    }
    
    var inLeft: Bool = true
}

extension InspirationViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    //MARK: UICollectionViewDataSource
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.row == 0 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: InspirationCollectionViewCell.identifier, for: indexPath) as? InspirationCollectionViewCell else {
                fatalError("InspirationCollectionViewCell is nil")
            }

            return cell
        } else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: InspirationCollectionTableViewCell.identifier, for: indexPath) as? InspirationCollectionTableViewCell else {
                fatalError("InspirationCollectionTableViewCell is nil")
            }
            
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.frame.size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetX = scrollView.contentOffset.x
        if offsetX == 0 {
            header.control.selectedSegmentIndex = 0
            inLeft = true
        } else if offsetX == UIScreen.main.bounds.width {
            header.control.selectedSegmentIndex = 1
            inLeft = false
        }
        
        let width_2 = UIScreen.main.bounds.width / 2
        
//        let isLeft = offsetX >= width_2
        
        let x = offsetX * (140 * ratio) / width_2
    
        
        
        header.scrollWidthOffset(offset: x)
    }
    
}

