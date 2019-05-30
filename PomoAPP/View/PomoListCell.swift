//
//  PomoListCell.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 30/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class PomoListCell: UICollectionViewCell, ConfigurableView, Reusable {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .trackStrokeColor
        self.layer.cornerRadius = 16
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func buildViewHierarchy() {
        
    }
    
    func setupConstraints() {
        
    }
}
