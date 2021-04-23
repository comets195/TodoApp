//
//  UserDefaultsKey.swift
//  WithoutStoryboard
//
//  Created by DongJin Lee on 2021/04/23.
//

import Foundation

struct UserDefaultsKey<T> {
    typealias Key<T> = UserDefaultsKey<T>
    let key: String
}

extension UserDefaultsKey: ExpressibleByStringLiteral {
    init(stringLiteral value: StringLiteralType) {
        self.init(key: value)
    }
}
