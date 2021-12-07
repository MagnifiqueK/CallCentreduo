//
//  SlyzerinModel.swift
//  CallCentre
//
//  Created by Amir Sabitov on 16.09.2021.
//

import Foundation
import UIKit

class SlyzerinUser {
    var people1 = [[User]]()

    init() {
        setup1()
    }
    func setup1(){
    
        
        let izha = User(name:"Ижа Радион", city:"Almaty", subtitle: "Еху",gender:.male, image: UIImage(named: "snake")!, clas:"Крыша")
        
        let teamLeadS = [izha]
        
        let belousova = User(name:"Белоусова Екатерина", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "snake")!,clas:"Крыша")
        
        let middle = [belousova]
        
        let rashupkina = User(name:"Павлюченко Екатерина", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "snake")!,clas:"Крыша")
        
        let seniorS = [rashupkina]
        
        let esdaulet = User(name:"Есдаулет Есымжан", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "snake")!,clas:"Крыша")
        let kabalahmetova = User(name:"Кабалахметова Мадина", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "snake")!,clas:"Крыша")
        let pokrasenko = User(name:"Покрасенко Владимир", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "snake")!,clas:"Крыша")
        let sabitov = User(name:"Сабитов Амирдин", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "snake")!,clas:"Крыша")
        let sarsenova = User(name:"Сарсенова Дана", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "snake")!,clas:"Крыша")
        let sautkanova = User(name:"Сауытканова Шырын", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "snake")!,clas:"Крыша")
        let sasengalieva = User(name:"Сисенгалиева Акмарал", city:"Almaty", subtitle: "Еху",gender:.female, image: UIImage(named: "snake")!,clas:"Крыша")
        
        let juniorS = [esdaulet, kabalahmetova,pokrasenko,sabitov,sarsenova,sautkanova,sasengalieva]
     
        people1.append(teamLeadS)
        people1.append(seniorS)
        people1.append(middle)
        people1.append(juniorS)
        
    }
}
