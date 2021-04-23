//
//  AppDelegate.swift
//  WithoutStoryboard
//
//  Created by DongJin Lee on 2021/04/07.
//

import UIKit
import Then

class AppDelegate: UIResponder, UIApplicationDelegate {
    private(set) var appCoordinator: AppCoordinator!
    private let appDIContainer = AppDIConatiner(dependencies: AppDIConatiner.Dependencies())
    
    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil)
    -> Bool {
        appCoordinator = AppCoordinator(dependencies: appDIContainer)
        self.window = appCoordinator.start()
        
        return true
    }

}
