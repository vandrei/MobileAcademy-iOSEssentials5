//
//  AlarmCell.swift
//  weatherwake
//
//  Created by Andrei Vasilescu on 31/03/16.
//  Copyright © 2016 mready. All rights reserved.
//

import UIKit

protocol AlarmCellDelegate {
    func didChangeAlarmState(alarm:Alarm, isOn:Bool)
}

class AlarmCell: UITableViewCell {
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var daysLabel: UILabel!
    @IBOutlet var activeSwitch: UISwitch!
    
    @IBOutlet var backgroundImageView: UIImageView!
    
    var delegate: AlarmCellDelegate?
    private var alarm: Alarm?
    
    func loadAlarm(alarm:Alarm) {
        self.alarm = alarm
        
        titleLabel.text = alarm.name
        timeLabel.text = DateConverter.getTime(alarm.date)
        activeSwitch.isOn = alarm.isOn.boolValue
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        backgroundImageView.isHighlighted = highlighted
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        backgroundImageView.isHighlighted = selected
    }
    
    @IBAction func switchStateChanged() {
        delegate?.didChangeAlarmState(alarm: alarm!, isOn: activeSwitch.isOn)
    }
}
