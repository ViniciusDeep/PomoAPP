//
//  CustomTabBarController.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 30/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = .outlineStrokeColor
        tabBar.barTintColor = .backgroundColor
        setupTab()
    }
    
    fileprivate func setupTab() {
        viewControllers = [
            createNavigation(viewController: PomoListController(), title: "PomoAPP", imageNamed: "tab1"),
            createNavigation(viewController: UIViewController(), title: "Settings", imageNamed: "tab2")
        ]
    }
    
    fileprivate func createNavigation(viewController: UIViewController, title: String, imageNamed:String) -> UINavigationController {
        let navigation = UINavigationController(rootViewController: viewController)
        navigation.navigationBar.barTintColor = .backgroundColor
        navigation.tabBarController?.tabBar.backgroundColor = .black
        navigation.navigationBar.prefersLargeTitles = true
        viewController.view.backgroundColor = .backgroundColor
        viewController.navigationItem.title = title
        navigation.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.outlineStrokeColor, NSAttributedString.Key.font: UIFont(name: "Arial", size: 40)!]
        navigation.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.outlineStrokeColor, NSAttributedString.Key.font: UIFont(name: "Arial", size: 28)!]
        navigation.tabBarItem.title = title
        navigation.tabBarItem.image = UIImage(named: imageNamed)
        return navigation
    }
    
}
