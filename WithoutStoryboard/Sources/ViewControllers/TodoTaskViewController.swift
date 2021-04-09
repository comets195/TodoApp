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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
