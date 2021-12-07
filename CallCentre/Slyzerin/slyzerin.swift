//
//  slyzerin.swift
//  CallCentre
//
//  Created by Amir Sabitov on 16.09.2021.
//

import Foundation
import UIKit

class SlyzerinViewController: ViewController {
    
    let SlyzerinTableView = UITableView()
    
    let slyzerin1 = SlyzerinUser()
    var cellid2 = "cell2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(SlyzerinTableView)
        SlyzerinTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellid2")
        SlyzerinTableView.delegate = self
        SlyzerinTableView.dataSource = self
        view.backgroundColor = .white
        title = "Слизерин"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        SlyzerinTableView.frame = view.bounds
        
    }
}

extension SlyzerinViewController:UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = slyzerin1.people1[section]
        return section.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return slyzerin1.people1.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "TeamLead"
        }else{
            return "Senior"
        }
}
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        if (section == 0){
            label.text = "TeamLead"
            label.textColor = .green
            label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        }else if (section == 1){
            label.textColor = .blue
            label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
            label.text = "Senior"
        }else if (section == 2){
            label.text = "Middle"
            label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
            label.textColor = .lightGray
        }else if (section == 3){
                label.text = "Junior"
            label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
                label.textColor = .lightGray
                
        }
        return label
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid2", for: indexPath)
        let section = slyzerin1.people1[indexPath.section]
        let item = section[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.imageView?.image = item.image
        
        return cell
    }
    
}


