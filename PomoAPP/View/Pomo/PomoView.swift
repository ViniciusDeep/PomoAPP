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
    
    lazy var pomoPlay = UIButton(backgdroungColor: .green, title: "Play")
    
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
        self.addSubview(pomoPlay)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
                self.pomoTV.topAnchor.constraint(equalTo: self.topAnchor),
                self.pomoTV.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                self.pomoTV.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                self.pomoPlay.topAnchor.constraint(greaterThanOrEqualToSystemSpacingBelow: pomoTV.bottomAnchor, multiplier: 24),
                self.pomoPlay.centerXAnchor.constraint(equalTo: self.pomoTV.centerXAnchor)
            ])
    }
    
    
    
}
