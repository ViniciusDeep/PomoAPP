//
//  PomoCreateView.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 30/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class PomoCreateView: UIView, ConfigurableView {
    
    fileprivate let pomoName = UILabel(text: "Give the name of your pomo", textSize: 20, color: .green)
    
    let pomoNameTf = UITextField(placeHolder: "Example: Study iOS development", backgroundColor: .white)
    
    fileprivate let pomoDescription = UILabel(text: "Give the description to your pomo", textSize: 20, color: .green)
    
    let pomoDescriptionTf = UITextField(placeHolder: "Study every day so just learning", backgroundColor: .white)
    
    private let pomoTimeLabel = UILabel(text: "Set the max time to work", textSize: 20, color: .green)
    
    let pomoTime = UISlider(min: 5, max: 25)
    
    
    private let pomoIntervalLabel = UILabel(text: "Set the interval that you want", textSize: 20, color: .green)
    
    let pomoInterval = UISlider(min: 5, max: 10)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        buildViewHierarchy()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func buildViewHierarchy() {
        self.addSubview(pomoName)
        self.addSubview(pomoNameTf)
        self.addSubview(pomoDescription)
        self.addSubview(pomoDescriptionTf)
        self.addSubview(pomoTime)
        self.addSubview(pomoTimeLabel)
        self.addSubview(pomoInterval)
        self.addSubview(pomoIntervalLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            self.pomoName.topAnchor.constraint(equalTo: self.topAnchor),
            self.pomoName.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 1.2),
            self.pomoNameTf.topAnchor.constraint(equalTo: pomoName.bottomAnchor, constant: 10),
            self.pomoNameTf.leadingAnchor.constraint(equalTo: pomoName.leadingAnchor),
            self.pomoNameTf.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.pomoDescription.topAnchor.constraint(equalTo: pomoNameTf.bottomAnchor, constant: 10),
            self.pomoDescription.leadingAnchor.constraint(equalTo: pomoNameTf.leadingAnchor),
            self.pomoDescriptionTf.topAnchor.constraint(equalTo: pomoDescription.bottomAnchor, constant: 10),
            self.pomoDescriptionTf.leadingAnchor.constraint(equalTo: pomoDescription.leadingAnchor),
            self.pomoDescriptionTf.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.pomoTimeLabel.topAnchor.constraint(equalTo: pomoDescriptionTf.bottomAnchor, constant: 10),
            self.pomoTimeLabel.leadingAnchor.constraint(equalTo: pomoDescriptionTf.leadingAnchor),
            self.pomoTime.topAnchor.constraint(equalTo: pomoTimeLabel.bottomAnchor, constant: 10),
            self.pomoTime.leadingAnchor.constraint(equalTo: pomoTimeLabel.leadingAnchor),
            self.pomoTime.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.pomoIntervalLabel.topAnchor.constraint(equalTo: pomoTime.bottomAnchor, constant: 10),
            self.pomoIntervalLabel.leadingAnchor.constraint(equalTo: pomoTime.leadingAnchor),
            self.pomoInterval.topAnchor.constraint(equalTo: pomoIntervalLabel.bottomAnchor, constant: 10),
            self.pomoInterval.leadingAnchor.constraint(equalTo: pomoIntervalLabel.leadingAnchor),
            self.pomoInterval.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10)
            ])
    }
}
