//
//  File.swift
//  CallCentre
//
//  Created by Amir Sabitov on 16.09.2021.
//

import Foundation
import UIKit


class GrifindorViewController: UITableViewController {
    var griffindor1 = GriffindorUser()
    var cellid1 = "cell1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: cellid1)
    }
}

extension GrifindorViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return griffindor1.people.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = griffindor1.people[section]
        return section.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "TeamLead"
        } else {
            return "Senior"
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        
        // try to use enum and switch instead of section == 0
        if (section == 0) {
            label.text = "TeamLead"
            label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
            label.textColor = .green
        } else if (section == 1) {
            label.textColor = .lightGray
            label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
            label.text = "Junior"
        } else if (section == 2) {
            label.text = "Junior"
            label.textColor = .lightGray
        }
        
        return label
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
       // let cell: UITableViewCell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell1")
        let section = griffindor1.people[indexPath.section]
        let item = section[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = item.clas
        cell.imageView?.image = item.image
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      //  let griffindorView = GriffindorTableViewCell()
        
    }
}
