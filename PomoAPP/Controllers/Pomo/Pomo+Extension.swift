//
//  Pomo+Extension.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 31/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

extension PomoController {
    
    func setupView() {
        pomoView = PomoView()
        pomoView.translatesAutoresizingMaskIntoConstraints = false
        self.view.insertSubview(pomoView, belowSubview: self.view)
        pomoView.pomoPlay.addTarget(self, action: #selector(playPomo), for: .touchUpInside)
        NSLayoutConstraint.activate([
            pomoView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            pomoView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
            ])
    }
    
    
    func setupNavigation() {
            self.view.backgroundColor = .backgroundColor
            navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.outlineStrokeColor, NSAttributedString.Key.font: UIFont(name: "Arial", size: 40)!]
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.outlineStrokeColor, NSAttributedString.Key.font: UIFont(name: "Arial", size: 28)!]
            navigationController?.navigationBar.barTintColor = .white
            navigationItem.title = pomo?.name
            navigationController?.navigationBar.barTintColor = .backgroundColor
            navigationController?.navigationBar.prefersLargeTitles = true
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(back))
            cancelButton.tintColor = .white
            navigationItem.leftBarButtonItem = cancelButton
            cancelButton.tintColor = .white
            navigationItem.leftBarButtonItem = cancelButton
    }
    
    @objc fileprivate func back() {
        self.dismiss(animated: true, completion: nil)
    }
}
