//
//  PomoListController.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 30/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class PomoListController: BaseCollectionViewController {
    
    public var pomos = [Pomo]()
    var startingFrame: CGRect?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollection()
        setupNavigation()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let coreDAO = CoreDataDAO<Pomo>()
        pomos = coreDAO.all()
        collectionView.reloadData()
    }
    
    fileprivate func setupNavigation() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(presentController))
    }
    
    @objc fileprivate func presentController() {
        let createVc = PomoCreateController()
        let navigation = UINavigationController(rootViewController: createVc)
        self.present(navigation, animated: true, completion: nil)
    } 
}
