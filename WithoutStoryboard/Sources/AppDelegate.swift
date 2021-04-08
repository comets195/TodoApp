//
//  AppDelegate.swift
//  WithoutStoryboard
//
//  Created by DongJin Lee on 2021/04/07.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {
    let appCoordinator = AppCoordinator()
    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil)
    -> Bool {
        self.window = appCoordinator.start()
        return true
    }
    
}
