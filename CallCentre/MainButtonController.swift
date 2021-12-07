//
//  ViewController.swift
//  CallCentre
//
//  Created by Amir Sabitov on 14.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private let button:UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 414, height: 818))
        button.backgroundColor = .none
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(button)
        button.addTarget(self,
                         action: #selector(didTapButton),
                         for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
        
    }
    
    @objc func didTapButton() {
        //Создали кнопку и заходим в Таббар
        let tabBarVC = createTabBarView()
        present(tabBarVC, animated: true)
        
    }
    
    func createTabBarView() -> UITabBarController {
        let tabBarVC = UITabBarController()
        
        let vc1 = UINavigationController(rootViewController: GrifindorViewController())
        let vc2 = UINavigationController(rootViewController: SlyzerinViewController())
        let vc3 = UINavigationController(rootViewController: homeHogward())
        let vc4 = UINavigationController(rootViewController: PuffinduiViewController())
        let vc5 = UINavigationController(rootViewController: KogtevranViewController())
        
        vc1.title = "Гриффиндор"
        vc2.title = "Слизерин"
        vc3.title = "Хогвартс"
        vc4.title = "Пуффиндуй"
        vc5.title = "Когтевран"
        
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        tabBarVC.selectedIndex = 2
        tabBarVC.modalPresentationStyle = .fullScreen
        
        let images = ["lion", "snake", "harry-potter", "badger", "eagle"]
        
        if let items = tabBarVC .tabBar.items {
            for x in 0..<items.count {
                items[x].image = UIImage(named: images[x])
            }
        }
        
        return tabBarVC
    }
}
