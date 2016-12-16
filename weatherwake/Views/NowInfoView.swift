//
//  NowInfoView.swift
//  weatherwake
//
//  Created by Andrei Vasilescu on 01/04/16.
//  Copyright © 2016 mready. All rights reserved.
//

import UIKit

class NowInfoView: UIView {
    var timer: Timer?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        initDateTimer()
        loadDateAndTime()
    }
    
    func initDateTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(loadDateAndTime), userInfo: nil, repeats: true)
    }
    
    func loadWeatherCondition(_ condition: WeatherCondition) {
        // TODO: Extract city name and temperature from condition model
        
        // TODO: Get the necessary image for the current weather condition
        // TODO: Set the image
    }
    
    func loadDateAndTime() {
        // TODO: Get the current time/date
        
        // TODO: extract current time from the date using DateConverter
        // TODO: extract current day from the date using DateConverter
        
        // TODO: Set time and day on designated labels
    }
}
