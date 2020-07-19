//
//  AppDelegate.swift
//  Minject
//
//  Created by thedoritos on 06/21/2020.
//  Copyright (c) 2020 thedoritos. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)

        let rootView = TodoViewController()
        let rootNavigation = UINavigationController(rootViewController: rootView)
        window.rootViewController = rootNavigation

        window.makeKeyAndVisible()
        self.window = window
        return true
    }
}
