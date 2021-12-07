//
//  TableViewCell.swift
//  CallCentre
//
//  Created by Amir Sabitov on 16.09.2021.
//

import UIKit

//rename file and class name to HogwardsCollectionViewCell
//try refactor
class homeTableCollectionCell: UICollectionViewCell {
    
    static let idetifier = "TableViewCell"
    
    private var models = "TableViewCell"
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        
        return label
        
    }()
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //contentView.addSubview(myLabel)
        contentView.addSubview(myImageView)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        myImageView.frame = CGRect(x: 5,
                                   y: 5,
                                   width: contentView.frame.size.width-10,
                                   height: contentView.frame.size.height-5-50)
        
        // leading also need top or bottom constraint
//        NSLayoutConstraint(item: myLabel,
//                           attribute: .leading,
//                           relatedBy: .equal,
//                           toItem: contentView,
//                           attribute: .leading,
//                           multiplier: 1,
//                           constant: 16).isActive = true
        
        // if use some library
        //myLabel.leading(to: contentView.leadingAnchor, constant: 16)
        
        myLabel.frame = CGRect(x: 5,
                               y: contentView.frame.size.height-50,
                               width: contentView.frame.size.width-10,
                               height: 50)
        
        
        // round view corners
        layer.cornerRadius = 8
        clipsToBounds = true
    }
    
    public func configure(with model: CollectionCellModel) {
        myLabel.text = model.imageName
        myImageView.image = UIImage(named: model.imageName)
    }
}
