//
//  ConfigurableView.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 30/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

protocol ConfigurableView: UIView {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfigurantion()
    func setupView()
}

extension ConfigurableView where Self: UIView {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
    }
    func setupAdditionalConfigurantion() {}
}
