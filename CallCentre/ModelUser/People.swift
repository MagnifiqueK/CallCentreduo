//
//  People.swift
//  CallCentre
//
//  Created by Amir Sabitov on 15.09.2021.
//

import Foundation
import UIKit

enum Gender {
    case male
    case female
}
class User:NSObject {
    var name:String
    var city:String
    var image:UIImage
    var gender:Gender
    var clas:String
    
    init(name:String,city:String,subtitle:String,gender:Gender,image:UIImage,clas:String) {
        self.name = name
        self.city = city
        self.image = image
        self.gender = gender
        self.clas = clas
    }
}
