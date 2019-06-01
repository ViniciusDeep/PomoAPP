//
//  PomoListCell.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 30/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class PomoListCell: UICollectionViewCell, ConfigurableView, Reusable {

    let containerView = UIView()
    
    lazy var trackLayer = CAShapeLayer(with: self.containerView, strokeColor: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1).cgColor,opacity: nil)
    lazy var trackLayerGray = CAShapeLayer(with: self.containerView, strokeColor: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).cgColor, opacity: 0.4)
    
    lazy var timeLabel = UILabel(text: "25:00", textSize: 36, color: .green)
    
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
    }
    
    func setupConstraints() {
        self.addSubview(containerView)
        containerView.layer.addSublayer(trackLayer)
        containerView.layer.addSublayer(trackLayerGray)
        containerView.addSubview(timeLabel)
        containerView.frame = CGRect(x: self.frame.width/2, y: self.frame.height/2, width: 100, height: 100)
        NSLayoutConstraint.activate([
            self.timeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.timeLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.namePomo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.namePomo.topAnchor.constraint(equalTo: self.bottomAnchor,  constant: -50),
            self.descriptionPomo.leadingAnchor.constraint(equalTo: self.namePomo.leadingAnchor),
            self.descriptionPomo.topAnchor.constraint(equalTo: self.namePomo.bottomAnchor,  constant: 10)
            ])
    }
}
