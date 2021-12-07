//
//  Models.swift
//  CallCentre
//
//  Created by Amir Sabitov on 16.09.2021.
//

import Foundation
import UIKit

enum CellMode {
    case collectionView(models: [CollectionCellModel], rows: Int)
    case list(models: [ListCellModel])
}

struct ListCellModel {
    let title: String
    let image: UIImage
}

struct CollectionCellModel {
    let title: String
    let imageName: String
}
