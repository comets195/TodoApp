//
//  TodoTaskDIContainer.swift
//  WithoutStoryboard
//
//  Created by DongJin Lee on 2021/04/23.
//

import UIKit

final class TodoTaskDIContainer {
    struct Dependancies {
        let userDefaultService: UserDefaultsServiceType
    }
    
    private let dependencies: Dependancies
    
    init(dependencies: Dependancies) {
        self.dependencies = dependencies
    }
    
    func makeTodoTaskCoordinator() -> TodoTaskCoordinator {
        TodoTaskCoordinator(service: dependencies.userDefaultService)
    }
}
