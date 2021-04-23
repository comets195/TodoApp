//
//  TodoTaskCoordinator.swift
//  WithoutStoryboard
//
//  Created by DongJin Lee on 2021/04/23.
//

import Foundation

final class TodoTaskCoordinator: BaseCoordinator {
    
    private(set) var viewController: TodoTaskViewController!
    private let viewModel: TodoTaskViewModel
    
    init(service: UserDefaultsServiceType) {
        viewModel = TodoTaskViewModel(service: service)
        
        let vc = TodoTaskViewController(viewModel: self.viewModel)
        self.viewController = vc
    }
    
    override func start() {
        
    }
}
