//
//  ModelUser.swift
//  CallCentre
//
//  Created by Amir Sabitov on 15.09.2021.
//

import Foundation
import UIKit



class GriffindorUser {
    var people = [[User]]()
    var some = [Level: [User]]()
    
    enum Level: Int {
        case teamlead, senior
        
        var title: String {
            switch self {
            case .teamlead:
                return  " Тимлид"
            default:
                return ""
            }
        }
    }
    
    
    init() {
        setup()
    }
    
    func setup() {
        
        let titova = User(name:"Титова Александра", city:"Almaty", subtitle: "Еху", gender:.female, image: UIImage(named: "lion")!,clas:"Крыша")
        
        let teamLead = [titova]
        
        
        some = [.teamlead: [titova], .senior: []]
        
//        let belousova = User(name:"Белоусова Екатерина", city:"Almaty", gender:.female, image: UIImage(named: "lion")!,clas:"Крыша")
//
//        let senior = [belousova]
        
        let azhikova = User(name:"Ажикова Камилла", city:"Almaty", subtitle: "Еху", gender:.female, image: UIImage(named: "lion")!,clas:"Крыша")
        let kornilceva = User(name:"Корнильцева Алина", city:"Almaty", subtitle: "Еху", gender:.female, image: UIImage(named: "lion")!,clas:"Крыша")
        let mamutova = User(name:"Мамутова Мадина", city:"Almaty", subtitle: "Еху", gender:.female, image: UIImage(named: "lion")!,clas:"Крыша")
        let maratova = User(name:"Маратова Нигара", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "lion")!,clas:"Крыша")
        let pavluchenko = User(name:"Павлюченко Екатерина", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "lion")!,clas:"Крыша")
        let saribay = User(name:"Сарыбатыр Айдана", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "lion")!,clas:"Крыша")
        let shin = User(name:"Шин Карина", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "lion")!,clas:"Крыша")
        
        let junior = [azhikova, kornilceva,mamutova,maratova,pavluchenko,saribay,shin]
     
        people.append(teamLead)
    //  people.append(senior)
        people.append(junior)
    }
}






