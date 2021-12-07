//
//  KogtevranModel.swift
//  CallCentre
//
//  Created by Amir Sabitov on 16.09.2021.
//

import Foundation
import UIKit

class KogtevranUser {
    var people3 = [[User]]()

    init() {
        setup1()
    }
    func setup1(){
    
        
        let togaev = User(name:"Титова Александра", city:"Almaty", subtitle: "Еху",gender:.male, image: UIImage(named: "eagle")!, clas:"Крыша")
        
        let teamLead = [togaev]
        
        let adilzhanova = User(name:"Адильжанова Айгерим", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "eagle")!,clas:"Крыша")
        let almabek = User(name:"Алмабек Айнур", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "eagle")!,clas:"Крыша")
        let almuratova = User(name:"Альмуратова Динара", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "eagle")!,clas:"Крыша")
        let emelkhan = User(name:"Емельхан Адлет", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "eagle")!,clas:"Крыша")
        let zhatugurov = User(name:"Жетурова Ерлан", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "eagle")!,clas:"Крыша")
        let iskakov = User(name:"Искаков Серик", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "eagle")!,clas:"Крыша")
        let kenzhali = User(name:"Кенжали Жамиля", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "eagle")!,clas:"Крыша")
        let husainova = User(name:"Хусаинова Зухра", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "eagle")!,clas:"Крыша")
        
        let senior = [adilzhanova,almabek,almuratova,emelkhan,zhatugurov,iskakov,kenzhali,husainova]
        
        let tleules = User(name:"Тлеулес Салтанат", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "eagle")!,clas:"Крыша")
        
        let middle = [tleules]
     
        people3.append(teamLead)
        people3.append(senior)
        people3.append(middle)
        
    }
}
