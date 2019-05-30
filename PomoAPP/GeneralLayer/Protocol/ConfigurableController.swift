//
//  ConfigurableController.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 30/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import Foundation

protocol ConfigurableController: class {
    func setupView()
    func setupNavigation()
}

extension ConfigurableController {
    func setupView(){}
    func setupNavigation(){}
}
