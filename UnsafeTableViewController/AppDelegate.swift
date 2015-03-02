//
//  AppDelegate.swift
//  UnsafeTableViewController
//
//  Created by BAN Jun on 2015/03/02.
//  Copyright (c) 2015年 codefirst. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.rootViewController = ViewController(name: "unsafe")
        window?.makeKeyAndVisible()
        return true
    }
}

