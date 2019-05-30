//
//  PomoCreate+Extension.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 30/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

extension PomoCreateController {
    func setupNavigationItems() {
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.outlineStrokeColor, NSAttributedString.Key.font: UIFont(name: "Arial", size: 40)!]
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.outlineStrokeColor, NSAttributedString.Key.font: UIFont(name: "Arial", size: 28)!]
        navigationController?.navigationBar.barTintColor = .white
        navigationItem.title = "Create your Pomo"
        navigationController?.navigationBar.barTintColor = .backgroundColor
        navigationController?.navigationBar.prefersLargeTitles = true
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(backToPreview))
        cancelButton.tintColor = .white
        navigationItem.leftBarButtonItem = cancelButton
        let saveButton = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(backToPreview))
        cancelButton.tintColor = .white
        saveButton.tintColor = .white
        navigationItem.leftBarButtonItem = cancelButton
        navigationItem.rightBarButtonItem = saveButton
    }
    @objc fileprivate func backToPreview() {
        self.dismiss(animated: true, completion: nil)
    }
}
