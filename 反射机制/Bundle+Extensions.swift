//
//  Bundle+Extensions.swift
//  反射机制
//
//  Created by tantan fan on 2018/5/28.
//  Copyright © 2018年 tantan fan. All rights reserved.
//

import Foundation

extension Bundle {
    
    // 返回命名空间字符串
    func nameSpace() -> String {
//        return Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
        return infoDictionary?["CFBundleName"] as? String ?? ""
    }
    
    // 计算型属性类似于函数，没有参数，有返回值
    var namespace: String {
        return infoDictionary?["CFBundleName"] as? String ?? ""
    }
    
}
