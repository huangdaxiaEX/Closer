//
//  HKLayout.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/24.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit

@objc protocol HKLayoutDelegate {
    func numberOfColumn(in collectionView: UICollectionView) -> Int
    func collectionView(_ collectionView: UICollectionView, layout: HKLayout, at indexPath: IndexPath) -> CGFloat
}

class HKLayout: UICollectionViewLayout {
    
    // 行间距
    var lineSpacing: CGFloat
    
    // 列间距
    var columnSpacing: CGFloat
    
    var sectionInsets: UIEdgeInsets
    
    var sectionLeft: CGFloat = 0 {
        willSet {
            sectionInsets.left = newValue
        }
    }
    
    var sectionRight: CGFloat = 0 {
        willSet {
            sectionInsets.right = newValue
        }
    }
    
    var sectionTop: CGFloat = 0 {
        willSet {
            sectionInsets.top = newValue
        }
    }
    
    var sectionBottom: CGFloat = 0 {
        willSet {
            sectionInsets.bottom = newValue
        }
    }
    
    weak var delegate: HKLayoutDelegate?
    
    private var columnHeights: [Int: CGFloat] = [Int: CGFloat]()
    private var attributes: [UICollectionViewLayoutAttributes] = []
    
    init(lineSpacing: CGFloat = 8, columnSpacing: CGFloat = 8, sectionInsets: UIEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)) {
        self.lineSpacing = lineSpacing
        self.columnSpacing = columnSpacing
        self.sectionInsets = sectionInsets
        
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var collectionViewContentSize: CGSize {
        var maxHeight: CGFloat = 0
        columnHeights.forEach { (height) in
            let value = height.value
            if value > maxHeight {
                maxHeight = value
            }
        }
        
        return CGSize.init(width: collectionView?.frame.width ?? 0, height: maxHeight + sectionBottom)
    }
    
    override func prepare() {
        super.prepare()
        
        guard let collect = collectionView else { return }
        if let columnCount = delegate?.numberOfColumn(in: collect) {
            for i in 0..<columnCount {
                columnHeights[i] = sectionInsets.top
            }
        }
        
        let itemCount = collect.numberOfItems(inSection: 0)
        attributes.removeAll()
        for j in 0..<itemCount {
            if let att = layoutAttributesForItem(at: IndexPath(row: j, section: 0)) {
                attributes.append(att)
            }
        }
    }
    
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        guard let collect = collectionView else { return nil }
        let att = UICollectionViewLayoutAttributes(forCellWith: indexPath)
        let width = collect.frame.width
        if let columnCount = delegate?.numberOfColumn(in: collect) {
            let cgCount = CGFloat(columnCount)
            guard columnCount > 0 else { return nil }
            let totalSpacing = (cgCount - 1) * columnSpacing
            let totalWidth = width - sectionInsets.left - sectionInsets.right - totalSpacing
            let itemWidth = totalWidth / cgCount
            let itemHeight = delegate?.collectionView(collect, layout: self, at: indexPath) ?? 0
            var minIndex = 0
            columnHeights.forEach({ (height) in
                let value = height.value
                let min = columnHeights[minIndex] ?? 0
                if value < min {
                    minIndex = height.key
                }
            })
            let cgMin = CGFloat(minIndex)
            var w = columnSpacing + itemWidth
            w = w * cgMin
            let itemX = sectionInsets.left + w
            let minHeight = columnHeights[minIndex] ?? 0
            let itemY = minHeight + lineSpacing
            
            att.frame = CGRect(x: itemX, y: itemY, width: itemWidth, height: itemHeight)
            columnHeights[minIndex] = att.frame.maxY
        }
        
        return att
    }
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        return attributes
    }
}
