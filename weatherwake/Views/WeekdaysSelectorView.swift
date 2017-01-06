//
//  WeekdaysSelectorView.swift
//  weatherwake
//
//  Created by Andrei Vasilescu on 31/03/16.
//  Copyright © 2016 mready. All rights reserved.
//

import UIKit

class WeekdaysSelectorView: UIView {
    // TODO: Create an IBOutlet with an array for the buttons
    
    @IBOutlet private var dayButtons:[UIButton]?
    
    // MARK: Public Methods
    func getSelectedDays() -> [NSNumber] {
        // TODO: Iterate through the buttons in the array and add their tag to an array
        // TODO: Return the tags array
        
        return []
    }
    
    func selectDays(_ days:[NSNumber]) {
        // TODO: Iterate through the buttons in the view
        // TODO: If the days param contains the button tag, mark the button as selected
    }
    
    fileprivate func configureButtonFont(_ button:UIButton) {
        let fontSize = button.titleLabel?.font.pointSize
        
        if (button.isSelected) {
            button.titleLabel?.font = Fonts.regularFont(fontSize!)
        } else {
            button.titleLabel?.font = Fonts.lightFont(fontSize!)
        }
    }
    
    // MARK: UI Actions
    @IBAction private func onDayTapped(button:UIButton) {
        button.isSelected = !button.isSelected
        configureButtonFont(button)
    }
}
