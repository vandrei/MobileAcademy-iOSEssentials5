//
//  Alarm.swift
//  
//
//  Created by Andrei Vasilescu on 31/03/16.
//
//

import CoreData

class Alarm {
    var id: String!
    
    var name: String!
    var sound: String!
    var date: Date!
    var isOn: NSNumber!
    
    var days: Set<Day>!
    
    init() {
        id = "unknown"
        name = "New Alarm"
        sound = "default"
        date = Date()
        isOn = NSNumber(value: 1)
    }
}
