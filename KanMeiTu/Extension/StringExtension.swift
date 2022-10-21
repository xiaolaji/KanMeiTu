//
//  StringExtension.swift
//  KanMeiTu
//
//  Created by yi on 2022/10/21.
//

import Foundation
extension String{
    func isPhone() -> Bool {
        let REG_PHONE = "^((1[3-9][0-9]))\\d{8}$"
        return NSPredicate(format: "SELF MATCHES %@",REG_PHONE).evaluate(with: self)
    }
}


