//
//  PomoViewModel.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 31/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import Foundation

class PomoViewModel {
    
    var name, description: String
    var time, interval: Int16
    
    init(pomo: Pomo) {
        self.name = pomo.name ?? ""
        self.description = pomo.about ?? ""
        self.time = pomo.pomoTime
        self.interval = pomo.pomoInterval
    }
    
    fileprivate func getPomo() -> Pomo {
        let dao = CoreDataDAO<Pomo>()
        return dao.new()
    }
}
