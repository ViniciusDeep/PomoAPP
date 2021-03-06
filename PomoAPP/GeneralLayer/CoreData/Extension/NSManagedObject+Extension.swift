//
//  NSManagedObject+Extension.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 31/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import Foundation
import CoreData

extension NSManagedObject {
    static var className: String {
        return String(describing: self)
    }
}
