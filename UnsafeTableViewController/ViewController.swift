//
//  ViewController.swift
//  UnsafeTableViewController
//
//  Created by BAN Jun on 2015/03/02.
//  Copyright (c) 2015年 codefirst. All rights reserved.
//

import UIKit

class ViewController: UnsafeTableViewController {
    let name: String
    
    init(name: String) {
        self.name = name
        super.init(style1: .Plain)
//        super.init(style2: .Plain)
//        super.init(style3: .Plain)
//        super.init(style4: .Plain)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

