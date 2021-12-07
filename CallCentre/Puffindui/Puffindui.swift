//
//  Puffindui.swift
//  CallCentre
//
//  Created by Amir Sabitov on 16.09.2021.
//

import Foundation
import UIKit

class PuffinduiViewController: ViewController {
    
    let PuffinduiTableView = UITableView()
    
    let Puffindui = PuffinduiUser()
    var cellid2 = "cell2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(PuffinduiTableView)
        PuffinduiTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellid2")
        PuffinduiTableView.delegate = self
        PuffinduiTableView.dataSource = self
        view.backgroundColor = .white
        title = "Пуффиндуй"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        PuffinduiTableView.frame = view.bounds
        
    }
}
extension PuffinduiViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = Puffindui.people2[section]
        return section.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return Puffindui.people2.count
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
        }else if (section == 1){
            label.textColor = .blue
            label.text = "Senior"
        }else if (section == 2){
            label.text = "Middle"
            label.textColor = .lightGray
        }else if (section == 3){
            label.text = "Junior"
            label.textColor = .lightGray
        }
        return label
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid2", for: indexPath)
        let section = Puffindui.people2[indexPath.section]
        let item = section[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.imageView?.image = item.image
        
        return cell
}
    
}

