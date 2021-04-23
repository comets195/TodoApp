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
    private let dependencies: AppDIConatiner
    
    init(dependencies: AppDIConatiner) {
        self.dependencies = dependencies
    }
    
    func start() -> UIWindow {
        window.backgroundColor = .white
        window.makeKeyAndVisible()
        
        let todoTaskDIContainer = dependencies.makeTodoTaskListSceneDIContainer()
        let todoTaskCoordinator = todoTaskDIContainer.makeTodoTaskCoordinator()
        let navigationController = UINavigationController(rootViewController: todoTaskCoordinator.viewController)
        window.rootViewController = navigationController
        
        return window
    }
    
}
