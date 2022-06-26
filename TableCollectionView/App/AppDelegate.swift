//
//  AppDelegate.swift
//  PinkTableView
//
//  Created by Александр Коробицын on 10.06.2022.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let viewController = MainViewController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navigation: NavigationController = .init(rootViewController: viewController)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigation
        window?.makeKeyAndVisible()
        
        window?.overrideUserInterfaceStyle = MTUserDevaults.shared.theme.getUserInterfaceStyle()
        return true
        
    }

}

