//
//  CollectionTableViewCell.swift
//  CallCentre
//
//  Created by Amir Sabitov on 16.09.2021.
//

import UIKit

protocol CollectionTableViewCellDelegate: AnyObject {
    func didSelectItem(with model: CollectionCellModel)
}

class homeTableViewCell: UITableViewCell {
    
    public weak var delegate: CollectionTableViewCellDelegate?
    
    static var identifier = "CollectionTableViewCell"
    
    private var models = [CollectionCellModel]()
    
    
    private let collectionView: UICollectionView
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 195, height: 195)
        layout.sectionInset = UIEdgeInsets(top: -10,
                                           left: 5,
                                           bottom: -40,
                                           right: 5)
        
        self.collectionView = UICollectionView(frame: .zero,
                                               collectionViewLayout: layout)
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        
        collectionView.register(homeTableCollectionCell.self,
                                forCellWithReuseIdentifier: homeTableCollectionCell.idetifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        contentView.addSubview(collectionView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = contentView.bounds
    }
    
    public func configure(with models: [CollectionCellModel]){
        self.models = models
        collectionView.reloadData()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension homeTableViewCell: UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let model = models[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: homeTableCollectionCell.idetifier,
                                                      for: indexPath) as! homeTableCollectionCell
        
        cell.configure(with: model)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let model = models[indexPath.row]
        collectionView.deselectItem(at: indexPath, animated: true)
        delegate?.didSelectItem(with: model)
    }
    
}

// TODO:
/*
 change all frames to constraits
 See MVC video
 rename all folder,class,file( in code too )
 git !!!much to see!!!
 add custom view for GriffindorTableViewCell from xib
 */
