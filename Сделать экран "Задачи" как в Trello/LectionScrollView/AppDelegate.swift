//
//  AppDelegate.swift
//  LectionScrollView
//
//  Created by Leonid Serebryanyy on 09.11.2019.
//  Copyright © 2019 Leonid Serebryanyy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

		window = UIWindow(frame: UIScreen.main.bounds)
		let controller = ThirdViewController()
        let navigationController = UINavigationController(rootViewController: controller)
		window?.rootViewController = navigationController
		window?.makeKeyAndVisible()

		return true
	}
}

