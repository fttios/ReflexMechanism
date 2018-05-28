//
//  ViewController.swift
//  反射机制
//
//  Created by tantan fan on 2018/5/25.
//  Copyright © 2018年 tantan fan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
    }
    
    private func setupUI() {
        let label = UILabel()
        label.center = view.center
        label.bounds = CGRect(x: 0, y: 0, width: 100, height: 50)
        label.textAlignment = .center
        label.textColor = UIColor.white
        label.text = Bundle.main.nameSpace()
        view.addSubview(label)
        view.backgroundColor = UIColor.red
    }

    


}

