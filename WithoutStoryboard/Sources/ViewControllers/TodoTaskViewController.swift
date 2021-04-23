//
//  ViewController.swift
//  WithoutStoryboard
//
//  Created by DongJin Lee on 2021/04/07.
//

import UIKit

class TodoTaskViewController: UIViewController {
    
    private let tableView = UITableView().then {
        $0.allowsSelectionDuringEditing = true
    }
    
    private var viewModel: TodoTaskViewModel
    
    init(viewModel: TodoTaskViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
