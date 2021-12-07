//
//  GriffindorTableViewCell.swift
//  CallCentre
//
//  Created by Amir Sabitov on 17.09.2021.
//

import UIKit

class GriffindorTableViewCell: UITableViewCell {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var ibName: UILabel!
    @IBOutlet weak var ibSub: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
