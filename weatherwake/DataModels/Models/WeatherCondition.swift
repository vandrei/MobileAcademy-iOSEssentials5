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
    
    var condition: WeatherConditionType!
    
    var city: String!
    var date: Date!
    
    init(json: [String : AnyObject]) {
        let mainJson = json["main"] as! [String : AnyObject]
        temperature = mainJson["temp"] as! Double
        minTemperature = mainJson["temp_min"] as! Double
        maxTemperature = mainJson["temp_max"] as! Double
        
        let weatherArray = json["weather"] as! [[String : AnyObject]]
        let weatherJson = weatherArray.first
        if (weatherJson != nil) {
            let description: String = weatherJson!["description"] as! String
            condition = WeatherConditionType(rawValue: description)
        }
        
        let seconds: TimeInterval = CDouble((json["dt"] as! TimeInterval))
        date = Date(timeIntervalSince1970: seconds)
        
        //This is added as a fail safe for a not expected weather condition. It would default to sunny.
        if (condition == nil) {
            condition = WeatherConditionType.Clear
        }
    }
    
    func getTemperature() -> String {
        let temperatureString = "\(Int(temperature))°C"
        
        return temperatureString
    }
}
