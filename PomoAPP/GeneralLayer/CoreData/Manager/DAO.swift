//
//  DAO.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 30/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import Foundation

protocol DAO {
    associatedtype Object
    func insert(object: Object)
    func delete(object: Object)
    func all() -> [Object]
}
