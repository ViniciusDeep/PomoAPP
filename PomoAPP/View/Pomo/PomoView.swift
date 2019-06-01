//
//  PomoView.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 31/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class PomoView: UIView, ConfigurableView {
    lazy var pomoTV = PomoTimerView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildViewHierarchy()
        setupConstraints()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func buildViewHierarchy() {
        self.addSubview(pomoTV)
    }
    
    func setupConstraints() {
        
    }
    
    
    
}
