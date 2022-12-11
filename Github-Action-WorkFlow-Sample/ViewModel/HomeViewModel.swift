//
//  HomeViewModel.swift
//  Github-Action-WorkFlow-Sample
//
//  Created by Sparkout on 11/12/22.
//

import Foundation
import SwiftKeychainWrapper

extension KeychainWrapper.Key {
    static let noLogin: KeychainWrapper.Key = "no_login" // Test bool key
}

class HomeViewModel {
    let success: Bool = true
    init() {
        KeychainWrapper.standard[.noLogin] = true
    }
}
