//
//  AppDelegate.swift
//  反射机制
//
//  Created by tantan fan on 2018/5/25.
//  Copyright © 2018年 tantan fan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    /**
     重点要知道 Swift 中 NSClassFromString （反射机制）的写法
     - 反射最重要的目的，就是为了解耦！
     - 可以多查一些 “反射机制和工厂方法”
     - 提示：第一印象会发现一个简单的功能，写的很复杂
     - 但是，封装的很好，而且弹性很大
     */

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // 1. 实例化 window
        
        window = UIWindow()
        window?.backgroundColor = UIColor.white
        
        /******************************测试代码******************************/
        /***********测试代码 （输出 info.plist 内容）***********/
        print(Bundle.main.infoDictionary)
        
        let bundleName = Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
        
        // 2. 设置跟控制器
        // 使用 NSClassFromString 这种方法需要添加命名空间 -> 默认就是 项目名称（最好不要有数字和特殊字符）
//        let clsName = "反射机制.ViewController"
        let clsName = bundleName + "." + "ViewController"
        
        let cls = NSClassFromString(clsName) as? UIViewController.Type
        
        let VC = cls?.init()
        
//        let vc = ViewController()
        
        window?.rootViewController = VC
        
        // 3. 让 window 可见
        window?.makeKeyAndVisible()
        
        return true
    }



}

