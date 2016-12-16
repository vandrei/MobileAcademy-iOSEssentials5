//
//  AlarmDA.swift
//  weatherwake
//
//  Created by Andrei Vasilescu on 31/03/16.
//  Copyright © 2016 mready. All rights reserved.
//

import Foundation

class AlarmDA: BaseDA {
    fileprivate let DEFAULT_ALARM_NAME = "Untitled"
    fileprivate let DEFAULT_SOUND = "SuperRingtone.caf"
    
    override init() {
        super.init()
        entityName = "Alarm"
    }
    
    func createAlarm() -> Alarm {
        // TODO: Create a CoreData Alarm object
        // TODO: Init object with id, default name, default sound

        return Alarm()
    }
    
    func getAllAlarms() -> [Alarm] {
        // TODO: Fetch Alarm objects
        
        return []
    }
    
    func getAlarm(_ id:String) -> Alarm? {
        // TODO: Create a predicate for the object. Searched object id should be equal to parameter id
        // TODO: Fecth objects with the predicate
        // TODO: Return first object in found array
        return nil
    }
    
    func deleteAlarm(_ alarm:Alarm) {
        super.deleteObject(alarm)
        super.save()
    }
    
    func deleteAllAlarms() {
        super.deleteObjects(getAllAlarms())
        super.save()
    }
}
