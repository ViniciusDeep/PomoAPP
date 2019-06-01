//
//  PomoController.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 31/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class PomoController: UIViewController {
    
    var pomo: Pomo?
    var pomoView: PomoView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
        setupView()
        playPomo()
    }
    
    var timer: Timer?
    var timerAround = 25
    
    @objc func playPomo() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTime), userInfo: nil, repeats: true)
    }
    
    @objc func runTime() {
        if timerAround != 0  {
            timerAround -= 1
            pomoView?.pomoTV.percentageLabel.text = String(timerAround)
        }
    }
    
}
