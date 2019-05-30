//
//  Pomo+CoreDataProperties.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 30/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//
//

import Foundation
import CoreData


extension Pomo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pomo> {
        return NSFetchRequest<Pomo>(entityName: "Pomo")
    }

    @NSManaged public var about: String?
    @NSManaged public var name: String?
    @NSManaged public var pomoInterval: Int16
    @NSManaged public var pomoTime: Int16

}
