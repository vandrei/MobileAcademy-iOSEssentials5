//
//  TimeField.swift
//  weatherwake
//
//  Created by Andrei Vasilescu on 31/03/16.
//  Copyright © 2016 mready. All rights reserved.
//

import UIKit

class TimeInputField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()

        configureInputView()
    }
    
    func dismissInputView() {
        self.resignFirstResponder()
    }
    
    // Preloads a given date
    func loadDate(_ date:Date) {
        setTimeText(date)
        setPickerDate(date)
    }
    
    func getSelectedDate() -> Date {
        let datePicker = self.inputView as! UIDatePicker
        return datePicker.date
    }
    
    // Method triggerd when a time is selected in the picker input
    func didSelectDate(_ datePicker:UIDatePicker) {
        setTimeText(datePicker.date)
    }
    
    fileprivate func setTimeText(_ date:Date) {
        let timeString = DateConverter.getTime(date)
        self.text = timeString
    }
    
    fileprivate func setPickerDate(_ date:Date) {
        let datePicker = self.inputView as! UIDatePicker
        datePicker.date = date
    }
    
    // Configures the input as a PickerView
    fileprivate func configureInputView() {
        setPickerInputView()
        setAccessoryInputView()
    }
    
    // Sets a spinning picker as input source for the text field
    fileprivate func setPickerInputView() {
        // TODO: Instantiate an UIDatePicker()
        // TODO: Set picker mode for time
        // TODO: Set picker locale to RO
        // TODO: Add picker target
        // TODO: Set the new picker as inputview for the textfield
    }
    
    // Sets a Toolbar with a "Done" button on the input view
    fileprivate func setAccessoryInputView() {
        // TODO: Instantiate a toolbar
        // TODO: Set Default style for barStyle
        // TODO: Put only "Done" button in the toolbar items
        // TODO: Set the toolbar as accessory view
    }
}
