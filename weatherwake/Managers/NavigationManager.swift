//
//  NavigationManager.swift
//  weatherwake
//
//  Created by Andrei Vasilescu on 01/04/16.
//  Copyright © 2016 mready. All rights reserved.
//

import UIKit

class NavigationManager: NSObject {
    fileprivate static let ALARM_LIST_CONTROLLER = "AlarmListController"
    fileprivate static let TODAY_CONTROLLER = "TodayController"
    fileprivate static let MAIN_STORYBOARD = "Main"
    
    static func openTodayController(_ window: UIWindow) {
        let storyboard = UIStoryboard(name: MAIN_STORYBOARD, bundle: nil)
        
        let todayController = storyboard.instantiateViewController(withIdentifier: TODAY_CONTROLLER)
        
        let navigationController = window.rootViewController as! UINavigationController
        navigationController.pushViewController(todayController, animated: false)
    }
}
