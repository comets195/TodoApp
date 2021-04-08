//
//  BaseCoordinator.swift
//  WithoutStoryboard
//
//  Created by DongJin Lee on 2021/04/07.
//

import Foundation
import UIKit

protocol Coordinator: class {
    var navigationController: UINavigationController { get set }
    var parentCoordinator: Coordinator? { get set }
    var childCoordinators: [Coordinator] { get }
    
    func start()
    func start(coordinator: Coordinator)
    func removeChildCoordinators()
    func didFinish()
}

protocol AppCoordinatorType {
    func start() -> UIWindow
}

class BaseCoordinator: Coordinator {
    var navigationController = UINavigationController()
    var parentCoordinator: Coordinator?
    var childCoordinators = [Coordinator]()
    
    
    func start() {
        fatalError("SubClass's start-method should be implemented.")
    }
    
    func start(coordinator: Coordinator) {
        self.childCoordinators.append(coordinator)
        coordinator.parentCoordinator = self
        coordinator.start()
    }
    
    func removeChildCoordinators() {
        self.childCoordinators.forEach { $0.removeChildCoordinators() }
        self.childCoordinators.removeAll()
    }
    
    func didFinish() {
        self.childCoordinators.removeLast()
    }
}
