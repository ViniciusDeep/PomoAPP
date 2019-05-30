//
//  ConfigurableView.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 30/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import Foundation

protocol ConfigurableView {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfigurantion()
    func setupView()
}

extension ConfigurableView {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
    }
    func setupAdditionalConfigurantion() {}
}
