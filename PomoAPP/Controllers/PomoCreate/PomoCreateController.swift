//
//  PomoCreateController.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 30/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class PomoCreateController: UIViewController, ConfigurableController {
    
    let pomoCreateView = PomoCreateView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .backgroundColor
         pomoCreateView.translatesAutoresizingMaskIntoConstraints = false
        setupNavigationItems()
        setupView()
    }
    
    func setupView() {
       view.addSubview(pomoCreateView)
        NSLayoutConstraint.activate([
            pomoCreateView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150),
            pomoCreateView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            pomoCreateView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            pomoCreateView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
            ])
    }
    
    @objc public func createPomo() {
        guard let pomoName = pomoCreateView.pomoNameTf.text else {return}
        guard let pomoDesc = pomoCreateView.pomoDescriptionTf.text else {return}
        let pomoTime = pomoCreateView.pomoTime.value
        let pomoInterval = pomoCreateView.pomoInterval.value
        
        let pomoDAO = CoreDataDAO<Pomo>()
        
        let pomo = pomoDAO.new()
        
        pomo.name = pomoName
        pomo.about = pomoDesc
        pomo.pomoInterval = Int16(pomoInterval)
        pomo.pomoTime = Int16(pomoTime)
        pomoDAO.insert(object: pomo)
        
        
        self.dismiss(animated: true, completion: nil)
    }
}
