//
//  PomoListCell.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 30/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class PomoListCell: UICollectionViewCell, ConfigurableView, Reusable {

    let pomoTV = PomoTimerView()
    
    lazy var namePomo = UILabel(text: "Code Study", textSize: 14, color: .green)
    lazy var descriptionPomo = UILabel(text: "This pomo is to study Swift", textSize: 14, color: .green)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .trackStrokeColor
        self.layer.cornerRadius = 16
        buildViewHierarchy()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func buildViewHierarchy() {
        self.addSubview(namePomo)
        self.addSubview(descriptionPomo)
        self.addSubview(pomoTV)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            self.pomoTV.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.pomoTV.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.namePomo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.namePomo.topAnchor.constraint(equalTo: self.bottomAnchor,  constant: -50),
            self.descriptionPomo.leadingAnchor.constraint(equalTo: self.namePomo.leadingAnchor),
            self.descriptionPomo.topAnchor.constraint(equalTo: self.namePomo.bottomAnchor,  constant: 10)
            ])
    }
}
