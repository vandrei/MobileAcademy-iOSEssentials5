//
//  WeatherCondition.swift
//  weatherwake
//
//  Created by Bogdan Dumitrescu on 4/1/16.
//  Copyright © 2016 mready. All rights reserved.
//

import Foundation

class WeatherCondition : NSObject {
    
    var temperature: Double!
    var minTemperature: Double!
    var maxTemperature: Double!
    
    // TODO: Add weather condition member
    
    var city: String!
    var date: Date!
    
    static func deserializeArray(_ json:[String: AnyObject]) -> [WeatherCondition]{
        // TODO: Deserialize json array received as parameter
        // TODO: Extract city information and the forecast array
        // TODO: Iterate throught forecasts and create a new WeatherCondition
        // TODO: Return an array of the create WeatherConditions
        
        return [WeatherCondition]()
    }
    
    init(json: [String : AnyObject]) {
        // TODO: Deserialize the JSON received as parameter
        // TODO: Extract temp, temp_min, temp_max, use the first WeatherCondition found
        
        // TODO: Extract time from "dt", convert it to NSTimeInterval, make it a CDouble
        // TODO: Create a NSDate with the epoch timestamp extracted
    }
    
    func getTemperature() -> String {
        // TODO: Create a string with the temperature and return it
        return ""
    }
}
