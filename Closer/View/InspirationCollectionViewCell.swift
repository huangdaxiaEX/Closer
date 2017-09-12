//
//  InspirationCollectionViewCell.swift
//  Closer
//
//  Created by huangdaxia on 2017/7/2.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit

class InspirationCollectionTableViewCell: UICollectionViewCell {
    static let identifier: String = "InspirationCollectionTableViewCell"
    
    lazy var tableView: UITableView = {
        let table = UITableView(frame: CGRect.zero, style: .plain)
        table.delegate = self
        table.dataSource = self
        table.separatorStyle = .none
        table.register(RecommandTableViewCell.self, forCellReuseIdentifier: RecommandTableViewCell.identifier)
        
        return table
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        addSubview(tableView)
        
        tableView.snp.makeConstraints { (make) in
            make.edges.equalTo(self)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension InspirationCollectionTableViewCell: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: RecommandTableViewCell.identifier, for: indexPath) as? RecommandTableViewCell else {
            fatalError("RecommandTableViewCell is nil")
        }
        let i = indexPath.row % 11 + 1
        let sn = "H\(i)"
        
        let img = UIImage(named: sn)!
        cell.config(model: RecommandTableViewCellViewModel(headImage: img, nameText: "Sun chen", infoText: "155cm / 48kg"))
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
//        let vc = InspirationContentViewController()
//        present(vc, animated: true, completion: nil)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        guard let imageView = scrollView.subviews[scrollView.subviews.count - 1] as? UIImageView else { return }
        imageView.backgroundColor = UIColor(hex: 0xE2BCAF)
    }
}


class InspirationCollectionViewCell: UICollectionViewCell {
    static let identifier: String = "InspirationCollectionViewCell"
    
    lazy var collectionView: UICollectionView = {
        let layout = HKLayout()
        layout.sectionLeft = 40
        layout.sectionRight = 40
        layout.lineSpacing = 30
        layout.columnSpacing = 20
        layout.delegate = self
        let collect = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collect.backgroundColor = UIColor.white
        collect.delegate = self
        collect.dataSource = self
        collect.register(RecommandCollectViewCell.self, forCellWithReuseIdentifier: RecommandCollectViewCell.identifier)
        
        return collect
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        addSubview(collectionView)
        
        collectionView.snp.makeConstraints { (make) in
            make.edges.equalTo(self)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension InspirationCollectionViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    //MARK: UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
//        let vc = InspirationContentViewController()
//        present(vc, animated: true, completion: nil)
    }
    
    //MARK: UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecommandCollectViewCell.identifier, for: indexPath) as? RecommandCollectViewCell else {
            fatalError("RecommandCollectViewCell is nil")
        }
        let i = indexPath.row % 11 + 1
        let sn = "H\(i)"
        
        let img = UIImage(named: sn)!
        cell.config(model: RecommandCollectViewCellViewModel(headerImage: Images.H1, nameText: "李宇春", timeText: "1 小时前", contentImage: img))
        cell.contentView.clipsToBounds = true
        cell.contentView.layer.cornerRadius = 5
        return cell
    }
    
}

extension InspirationCollectionViewCell: HKLayoutDelegate {
    func numberOfColumn(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout: HKLayout, at indexPath: IndexPath) -> CGFloat {
        let height = 100 + arc4random() % 30 + arc4random() % 50 + arc4random() % 50 + arc4random() % 50
        
        return CGFloat(height)
    }
    
}

