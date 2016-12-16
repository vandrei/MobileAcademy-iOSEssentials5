//
//  NotificationsWrapper.swift
//  weatherwake
//
//  Created by Andrei Vasilescu on 01/04/16.
//  Copyright © 2016 mready. All rights reserved.
//

import UIKit

class NotificationsWrapper: NSObject {
    fileprivate static let ALARM_ID = "alarm_id"

    fileprivate static let ALARM_CATEGORY = "alarm_category"
    static let SNOOZE_ACTION = "snooze_action"
    
    fileprivate static let SNOOZE_INTERVAL = 30 // 30 seconds
    
    static func scheduleNotifications(_ alarm:Alarm, dates:[Date]) {
        // TODO: Iterate through dates
            // TODO: Create a notification. Alarm is recurring if days array has elements
            // TODO: Schedule Notification
    }
    
    static func scheduleSnoozedNotification(_ notification: UILocalNotification) {
        let date = notification.fireDate!
        let snoozeDate = date.addingTimeInterval(Double(SNOOZE_INTERVAL))
        
        let snoozeNotification = duplicateNotification(notification)
        snoozeNotification.fireDate = snoozeDate
        // TODO: Schedule the snoozeNotification
    }
    
    static func cancelNotifications(_ alarm:Alarm) {
        // TODO: Get notifications for alarm
        // TODO: Iterate through notifications and cancel them
    }
    
    static func hasNotifications(_ alarm:Alarm) -> Bool {
        // TODO: Get notifications for alarm
        // TODO: Return True if count is > 0 or false if not
        
        return false;
    }
    
    static func getNotifications(_ alarm:Alarm) -> [UILocalNotification]{
        var alarmNotifications = [UILocalNotification]()
        
        let notifications = UIApplication.shared.scheduledLocalNotifications
        
        if (notifications == nil) {
            return alarmNotifications
        }
        
        for notification in notifications! {
            let alarmId = notification.userInfo![ALARM_ID] as! String
            if (alarmId == alarm.id) {
                alarmNotifications.append(notification)
            }
        }
        
        return alarmNotifications
    }
    
    static func duplicateNotification(_ triggeredNotification: UILocalNotification) -> UILocalNotification {
        let notification = UILocalNotification()
        notification.alertBody = triggeredNotification.alertBody
        notification.userInfo = triggeredNotification.userInfo
        notification.timeZone = triggeredNotification.timeZone
        notification.soundName = triggeredNotification.soundName
        notification.category = triggeredNotification.category
        
        return notification
    }
    
    static func createNotification(_ alarm:Alarm, date:Date, isRecurring:Bool) -> UILocalNotification {
        // TODO: Instantiate UILocalNotification
        // TODO: Set notification information: firedate, alert body, timezone, sound name, alarm category
        // TODO: Save the alarm Id in userInfo Dictionary
        // TODO: If notifications is recurring set repeatInterval to WeekOfYear
        // TODO: Return notification
        
        return UILocalNotification()
    }
    
    static func registerForNotifications() {
        let notificationCategory = createNotificationsCategory()
        
        // TODO: Register for Local Notifications with the notificationCategory
    }
    
    static func createNotificationsCategory() -> UIMutableUserNotificationCategory {
        let snoozeAction = UIMutableUserNotificationAction()
        snoozeAction.identifier = SNOOZE_ACTION
        snoozeAction.title = "Snooze"
        snoozeAction.activationMode = UIUserNotificationActivationMode.background
        snoozeAction.isAuthenticationRequired = false
        snoozeAction.isDestructive = true
        
        let category = UIMutableUserNotificationCategory()
        category.identifier = ALARM_CATEGORY
        category.setActions([snoozeAction], for: UIUserNotificationActionContext.minimal)
        category.setActions([snoozeAction], for: UIUserNotificationActionContext.default)
        
        return category
    }
}
