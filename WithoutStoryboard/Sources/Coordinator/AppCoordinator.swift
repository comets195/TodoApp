//
//  AppCoordinator.swift
//  WithoutStoryboard
//
//  Created by DongJin Lee on 2021/04/07.
//

import Foundation
import UIKit

class AppCoordinator: BaseCoordinator, AppCoordinatorType {    
    func start() -> UIWindow {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = .white
        window.makeKeyAndVisible()
        
        let startingVC = ViewController()
        let navigationController = UINavigationController(rootViewController: startingVC)
        window.rootViewController = navigationController
        
        return window
    }
}
