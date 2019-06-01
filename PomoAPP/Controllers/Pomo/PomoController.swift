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
    
 
    @objc func playPomo() {
        let timeManager = TimeManager()
        timeManager.hmsFrom(seconds: 1500) { (minutes, seconds) in
            let min = timeManager.getStringFrom(seconds: minutes)
            let sec  = timeManager.getStringFrom(seconds: seconds)
            print("\(min):\(sec)")
        }
    }
}
