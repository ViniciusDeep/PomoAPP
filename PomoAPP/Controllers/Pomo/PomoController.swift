//
//  PomoController.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 31/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class PomoController: UIViewController {
    
    var pomo: Pomo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
        setupView()
    }
    
    fileprivate func setupView() {
        let pomoView = PomoView()
        pomoView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(pomoView)
        NSLayoutConstraint.activate([
                pomoView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
                pomoView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
            ])
    }
}
