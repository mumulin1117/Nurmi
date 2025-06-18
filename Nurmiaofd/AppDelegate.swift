//
//  AppDelegate.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/16.
//

import UIKit
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow.init(frame: UIScreen.main.bounds)
        AppDelegate.cheingsoothingRepetition(Forireson:(UIViewController.acousticResonanceToken == nil))
        window?.makeKeyAndVisible()
        SwiftyStoreKit.completeTransactions(atomically: true) { _ in}
        return true
    }

   class func cheingsoothingRepetition(Forireson:Bool)  {
        if Forireson == true {
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "Juisaofiuek") as! UINavigationController
            return
        }
        
       ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "INitamainNabTor") as! UINavigationController
    }
}

