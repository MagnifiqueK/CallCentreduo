//
//  PuffinduiModel.swift
//  CallCentre
//
//  Created by Amir Sabitov on 16.09.2021.
//

import Foundation
import UIKit

class PuffinduiUser {
    var people2 = [[User]]()

    init() {
        setup2()
    }
    func setup2(){
    
        
        let baratova = User(name:"Баратова Шахризада", city:"Almaty", subtitle: "Еху",gender:.male, image: UIImage(named: "badger")!, clas:"Крыша")
        
        let teamLead = [baratova]
        
        let ashirova = User(name:"Аширова Гульпари", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "badger")!,clas:"Крыша")
        let irismetova = User(name:"Ирисметова Сабина", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "badger")!,clas:"Крыша")
        let maraslimov = User(name:"Марислимов Ислам", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "badger")!,clas:"Крыша")
        
        
        let senior = [ashirova, irismetova, maraslimov]
        
        let boltaev = User(name:"Болтаев Давронбек", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "badger")!,clas:"Крыша")
        let djumagaliev = User(name:"Джумагалиев Мурат", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "badger")!,clas:"Крыша")
        
        let middle = [boltaev, djumagaliev]
        
        let nadirova = User(name:"Надирова Унилжан", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "badger")!,clas:"Крыша")
        
        let junior = [nadirova]
     
        people2.append(teamLead)
        people2.append(senior)
        people2.append(middle)
        people2.append(junior)
        
    }
}
