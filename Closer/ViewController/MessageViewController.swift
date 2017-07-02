//
//  MessageViewController.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/23.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit
import SnapKit

class MessageViewController: ViewController {
    
    var dataCount = 20
    var columnCount = 2
    
    lazy var collectionView: UICollectionView = {
        let layout = HKLayout()
        layout.delegate = self
        let collect = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collect.backgroundColor = UIColor.white
        collect.delegate = self
        collect.dataSource = self
        collect.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Identifier")
        
        return collect
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(collectionView)
        
        collectionView.snp.makeConstraints { (make) in
            make.edges.equalTo(view)
        }
    }
}

extension MessageViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    //MARK: UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
    //MARK: UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Identifier", for: indexPath)
        cell.contentView.backgroundColor = [UIColor.blue, UIColor.red, UIColor.yellow][indexPath.row % 3]
        cell.contentView.clipsToBounds = true
        cell.contentView.layer.cornerRadius = 5
        return cell
    }

}

extension MessageViewController: HKLayoutDelegate {
    func numberOfColumn(in collectionView: UICollectionView) -> Int {
        return columnCount
    }
    
    func collectionView(_ collectionView: UICollectionView, layout: HKLayout, at indexPath: IndexPath) -> CGFloat {
        let height = 200 + arc4random() % 100
        
        return CGFloat(height)
    }
    
}
