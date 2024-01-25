//
//  MainTabBarViewController.swift
//  Recipe Roulette
//
//  Created by Leonardo Macedo on 24/01/24.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: SearchViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        
        vc1.title = "Home"
        vc2.title = "Search"
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1, vc2], animated: true)
    }

}
