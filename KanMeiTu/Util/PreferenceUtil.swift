//
//  PreferanceUtil.swift
//  KanMeiTu
//
//  Created by yi on 2022/10/21.
//

import Foundation
class PreferenceUtile{
    static func setLogin(_ isLogin:Bool) {
        UserDefaults.standard.set(isLogin, forKey: KEY_USER_LOGIN)
    }
    static func isLogin() -> Bool {
        return UserDefaults.standard.bool(forKey: KEY_USER_LOGIN)
    }
    private static let KEY_USER_LOGIN = "KEY_USER_LOGIN"
}
