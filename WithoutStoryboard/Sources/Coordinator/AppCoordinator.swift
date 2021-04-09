//
//  AppCoordinator.swift
//  WithoutStoryboard
//
//  Created by DongJin Lee on 2021/04/07.
//

import Foundation
import UIKit

final class AppCoordinator: BaseCoordinator, AppCoordinatorType {
    private let window = UIWindow(frame: UIScreen.main.bounds)
    
    func start() -> UIWindow {
        window.backgroundColor = .white
        window.makeKeyAndVisible()
        
        let startingVC = TodoTaskViewController()
        let navigationController = UINavigationController(rootViewController: startingVC)
        window.rootViewController = navigationController
        
        return window
    }
    
}
