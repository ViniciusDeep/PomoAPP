//
//  TimeManager.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 01/06/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import Foundation

class TimeManager {
    var timer: Timer?
    var timerAround = 1500
    
    @objc func playPomo() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTime), userInfo: nil, repeats: true)
    }
    
    @objc func runTime(time: String) {
        if timerAround != 0  {
            timerAround -= 1
        }
    }
    func hmsFrom(seconds: Int, completion: @escaping (_ minutes: Int, _ seconds: Int)->()) {
        completion((seconds % 3600) / 60, (seconds % 3600) % 60)
    }
    
    func getStringFrom(seconds: Int) -> String {
        return seconds < 10 ? "0\(seconds)" : "\(seconds)"
    }
    
    func castingTime(sec: String, min: String) {
    }
    
    
}
