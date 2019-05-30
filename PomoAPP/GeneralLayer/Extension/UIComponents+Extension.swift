//
//  UIComponents+Extension.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 30/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

extension CAShapeLayer {
    convenience init(with view: UIView, strokeColor: CGColor, opacity: Float?) {
        self.init()
        let circularPath = UIBezierPath(arcCenter: CGPoint(x: view.frame.width/2, y: view.frame.height/2), radius: 100, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        self.speed = 0.5
        self.strokeStart = 0
        self.path = circularPath.cgPath
        self.strokeColor = strokeColor
        self.lineWidth = 3
        self.fillColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        if let opacity = opacity {
            self.opacity = opacity
        }
    }
}

extension UILabel {
    convenience init(text: String, textSize: CGFloat, color: UIColor) {
        self.init()
        self.text = text
        self.font = UIFont.boldSystemFont(ofSize: textSize)
        self.textColor = color
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
