//
//  Kogtevran.swift
//  CallCentre
//
//  Created by Amir Sabitov on 16.09.2021.
//

import Foundation
import UIKit

class KogtevranViewController: ViewController {
    
    let KogtevranTableView = UITableView()
    
    let kogtevran = KogtevranUser ()
    var cellid = "cellid2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        title = "Когтевран"
        view.addSubview(KogtevranTableView)
        KogtevranTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellid2")
        KogtevranTableView.delegate = self
        KogtevranTableView.dataSource = self
        view.backgroundColor = .white
        title = "Слизерин"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        KogtevranTableView.frame = view.bounds
        
    }
}

extension KogtevranViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = kogtevran.people3[section]
        return section.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return kogtevran.people3.count
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
        }
        return label
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid2", for: indexPath)
        let section = kogtevran.people3[indexPath.section]
        let item = section[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.imageView?.image = item.image
        
        return cell
            }

}

