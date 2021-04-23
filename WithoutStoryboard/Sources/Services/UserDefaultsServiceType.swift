//
//  UserDefaultsServiceType.swift
//  WithoutStoryboard
//
//  Created by DongJin Lee on 2021/04/23.
//

import Foundation

protocol UserDefaultsServiceType {
    func value<T>(forkey key: UserDefaultsKey<T>) -> T?
    func set<T>(value: T?, forKey key: UserDefaultsKey<T>)
}

final class UserDefaultsService: UserDefaultsServiceType {
    
    private var defaults: UserDefaults {
        return UserDefaults.standard
    }
    
    func value<T>(forkey key: UserDefaultsKey<T>) -> T? {
        return self.defaults.value(forKey: key.key) as? T
    }
    
    func set<T>(value: T?, forKey key: UserDefaultsKey<T>) {
        self.defaults.setValue(value, forKey: key.key)
        self.defaults.synchronize()
    }
}
