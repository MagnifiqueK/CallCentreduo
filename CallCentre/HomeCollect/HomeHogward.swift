//
//  HomeHogward.swift
//  CallCentre
//
//  Created by Amir Sabitov on 16.09.2021.
//

import UIKit
import AVFoundation


class homeHogward: ViewController {
    
    private let table: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(UITableViewCell.self,
                       forCellReuseIdentifier: "cell")
        table.register(homeTableViewCell.self,
                       forCellReuseIdentifier: homeTableViewCell.identifier )
        return table
    }()
    
    private var models = [CellMode]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpModels()
        
        view.addSubview(table)
        table.tableHeaderView = createTableHeader()
        table.delegate = self
        table.dataSource = self
        
        title = "Хогвард"
        
    }
    
    private func createTableHeader() -> UIView? {
        guard let path = Bundle.main.path(forResource: "video",
                                          ofType: "mp4") else {
            return nil
        }
        
        let url = URL(fileURLWithPath: path)
        let player = AVPlayer(url: url)
        player.volume = 0
        
        let headerView = UIView(frame: CGRect(x: 0,
                                              y: 0,
                                              width: view.frame.size.width ,
                                              height: view.frame.size.width))
        
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = headerView.bounds
        playerLayer.videoGravity = .resizeAspectFill
        
        headerView.layer.addSublayer(playerLayer)
        
        player.play()
        
        return headerView
    }
    
    private func setUpModels () {
        models.append(.collectionView(models: [
            CollectionCellModel(title: "Photo1",
                                imageName: "Photo11"),
            CollectionCellModel(title: "Photo2",
                                imageName: "Photo11"),
            CollectionCellModel(title: "Photo3",
                                imageName: "Photo11"),
            CollectionCellModel(title: "Photo4",
                                imageName: "Photo11"),
            CollectionCellModel(title: "Photo5",
                                imageName: "Photo11"),
            CollectionCellModel(title: "Photo6",
                                imageName: "Photo11"),
            CollectionCellModel(title: "Photo7",
                                imageName: "Photo11"),
            CollectionCellModel(title: "Photo7",
                                imageName: "Photo11"),
            CollectionCellModel(title: "Photo7",
                                imageName: "Photo11"),
            CollectionCellModel(title: "Photo7",
                                imageName: "Photo11"),
        ],
        rows: 1))
        
        models.append(.list(models: [
            ListCellModel(title: "Косой переулок",
                          image: UIImage(named: "Harry")!),
            ListCellModel(title: "Кубок Огня",
                          image: UIImage(named: "Harry")!),
            ListCellModel(title: "Заклинания",
                          image: UIImage(named: "Harry")!),
            ListCellModel(title: "Дементоры",
                          image: UIImage(named: "Harry")!)
        ]))
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        table.frame = view.bounds
    }
}

extension homeHogward: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch models[section] {
        case .list(let models): return models.count
        case .collectionView(_, _):  return 1
            
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch models[indexPath.section] {
        case .list(let models):
            let model = models[indexPath.row]
            //let cell = tableView.dequeueReusableCell(withIdentifier: "cell",
            //   for: indexPath)
            let cell: UITableViewCell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
            cell.textLabel?.text = model.title
            cell.imageView?.image = model.image
            
            return cell
        case .collectionView(let models, _):
            let cell = tableView.dequeueReusableCell(withIdentifier: homeTableViewCell.identifier,
                                                     for: indexPath) as! homeTableViewCell
            cell.configure(with: models)
            cell.delegate = self
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("DID SELECT")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch models[indexPath.section] {
        case .list(_): return 70
        case .collectionView(_, let rows): return 180 * CGFloat(rows)
        }
    }
}

extension homeHogward: CollectionTableViewCellDelegate {
    func didSelectItem(with model: CollectionCellModel){
        print("Selected\(model.title)")
    }
}


