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
    
    var nav = UINavigationController()
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let viewControler = ViewController()
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        nav = UINavigationController(rootViewController: viewControler)
        
        window?.rootViewController = nav
        
        window?.makeKeyAndVisible()
        
        window?.backgroundColor = UIColor.red
        
        
        return true
    }


}

