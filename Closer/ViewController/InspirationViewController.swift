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
    
    let collectView = {
        let flow = UICollectionViewFlowLayout()
        flow.scrollDirection = .horizontal
        let collect = UICollectionView(frame: .zero, collectionViewLayout: flow)
        
        return collect
    } ()
    
    let header = SegmentedControlView()
    
    var dataCount = 20
    
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

    lazy var tableView: UITableView = {
        let table = UITableView(frame: CGRect.zero, style: .plain)
        table.delegate = self
        table.dataSource = self
        table.separatorStyle = .none
        table.register(RecommandTableViewCell.self, forCellReuseIdentifier: RecommandTableViewCell.identifier)
        
        return table
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(header)
        view.addSubview(tableView)
        view.addSubview(collectionView)
        tableView.isHidden = true
        header.didClicked = { [weak self] index in
            let b = index == 0
            self?.tableView.isHidden = b
            self?.collectionView.isHidden = !b
        }
        
        header.snp.makeConstraints { (make) in
            make.top.left.right.equalTo(view)
        }
        
        tableView.snp.makeConstraints { (make) in
            make.edges.equalTo(view).inset(UIEdgeInsetsMake(70, 0, 0, 0))
        }
        
        collectionView.snp.makeConstraints { (make) in
            make.edges.equalTo(view).inset(UIEdgeInsetsMake(70, 0, 0, 0))
        }
    }
    
    func handleGesture(gesture: UIPanGestureRecognizer) {
        let pointX = gesture.translation(in: view).x
        if pointX > 0 {
            // right
        } else {
            // left
        }
    }
}

extension InspirationViewController: UITableViewDataSource, UITableViewDelegate {
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
        let vc = InspirationContentViewController()
        present(vc, animated: true, completion: nil)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        guard let imageView = scrollView.subviews[scrollView.subviews.count - 1] as? UIImageView else { return }
        imageView.backgroundColor = UIColor(hex: 0xE2BCAF)
    }
}

extension InspirationViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    //MARK: UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        let vc = InspirationContentViewController()
        present(vc, animated: true, completion: nil)
    }
    
    //MARK: UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataCount
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

extension InspirationViewController: HKLayoutDelegate {
    func numberOfColumn(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout: HKLayout, at indexPath: IndexPath) -> CGFloat {
        let height = 100 + arc4random() % 30 + arc4random() % 50 + arc4random() % 50 + arc4random() % 50
        
        return CGFloat(height)
    }
    
}
