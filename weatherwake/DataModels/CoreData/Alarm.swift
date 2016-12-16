//
//  Alarm.swift
//  
//
//  Created by Andrei Vasilescu on 31/03/16.
//
//

import CoreData

class Alarm: NSManagedObject {
    var id: String!
    
    var name: String!
    var sound: String!
    var date: Date!
    var isOn: NSNumber!
    
    var days: Set<Day>!
}
