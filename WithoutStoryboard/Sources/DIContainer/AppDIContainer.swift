//
//  AppDIContainer.swift
//  WithoutStoryboard
//
//  Created by DongJin Lee on 2021/04/22.
//

import Foundation

final class AppDIConatiner {
    
    struct Dependencies {
        let userDefaultService = UserDefaultsService()
    }
    
    let dependencies: Dependencies
    
    init(dependencies: AppDIConatiner.Dependencies) {
        self.dependencies = dependencies
    }
    
    func makeTodoTaskListSceneDIContainer() -> TodoTaskDIContainer {
        TodoTaskDIContainer(dependencies: TodoTaskDIContainer.Dependancies(userDefaultService: dependencies.userDefaultService))
    }
    
}
