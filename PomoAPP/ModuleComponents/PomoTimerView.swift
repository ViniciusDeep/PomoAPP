//
//  PomoTimerView.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 31/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class PomoTimerView: UIView, ConfigurableView {
    lazy var trackLayer = CAShapeLayer(with: self, strokeColor: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1).cgColor,opacity: nil)
    lazy var trackLayerGray = CAShapeLayer(with: self, strokeColor: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).cgColor, opacity: 0.4)
    lazy var percentageLabel = UILabel(text: "25:00", textSize: 48, color: .green)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.buildViewHierarchy()
        self.setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    func buildViewHierarchy() {
        self.layer.addSublayer(trackLayer)
        self.layer.addSublayer(trackLayerGray)
        self.addSubview(self.percentageLabel)
        }
    
    func setupConstraints() {
       NSLayoutConstraint.activate([
         self.percentageLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
         self.percentageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
