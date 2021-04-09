//
//  TaskCell.swift
//  WithoutStoryboard
//
//  Created by DongJin Lee on 2021/04/08.
//

import UIKit

final class TaskCell: UITableViewCell {
    struct Constant {
        static let titleLableNumberOfLine = 2
    }
    
    struct Font {
        static let titleLabel = UIFont.systemFont(ofSize: 14.0)
    }
    
    private let titleLabel = UILabel().then {
        $0.font = Font.titleLabel
        $0.numberOfLines = Constant.titleLableNumberOfLine
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(titleLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
