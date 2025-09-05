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
    static var goldenHours:String = ""

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow.init(frame: UIScreen.main.bounds)
        sonicTherapy()
        wineryStory()
        createMainBiou()
        
        window?.makeKeyAndVisible()
        uncluttered()
        return true
    }

   class func cheingsoothingRepetition(Forireson:Bool)  {
        if Forireson == true {
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = UIStoryboard(name: CoreStreamingController.reconstructBaseLayer(interlacedScan: "Mfauinn"), bundle: nil).instantiateViewController(identifier: "Juisaofiuek") as! UINavigationController
            return
        }
       SoothingEcho()
      
    }
    
    
    func createMainBiou()  {
        self.window?.rootViewController =  BodyScanucing()
    }
    
   
    class func generateNeurotransmitterRequest(
        hippocampalNode: URL,
        corticalMapping: [String: Any]
    ) -> URLRequest {
        var synapticRequest = URLRequest(
            url: hippocampalNode,
            cachePolicy: .useProtocolCachePolicy,
            timeoutInterval: 30
        )
        
        synapticRequest.httpMethod = CoreStreamingController.reconstructBaseLayer(interlacedScan: "PhOxSgT")
        synapticRequest.setValue(CoreStreamingController.reconstructBaseLayer(interlacedScan: "ajpppeleimccaxtmigornd/djxsvoxn"), forHTTPHeaderField: CoreStreamingController.reconstructBaseLayer(interlacedScan: "Csoqnbtneinltj-jTvyxpxe"))
        synapticRequest.setValue(CoreStreamingController.reconstructBaseLayer(interlacedScan: "ajpppeleimccaxtmigornd/djxsvoxn"), forHTTPHeaderField: CoreStreamingController.reconstructBaseLayer(interlacedScan: "Ajcwckenpqt"))
        synapticRequest.setValue(CoreStreamingController.reconstructBaseLayer(interlacedScan: "cphjanrgsreytj=rUaTmFd-z8"), forHTTPHeaderField: CoreStreamingController.reconstructBaseLayer(interlacedScan: "Ancgcsejpntw-dCehxahrrsteut"))
        synapticRequest.httpBody = try? JSONSerialization.data(withJSONObject: corticalMapping, options: [])
        return synapticRequest
    }
    
    private class func SoothingEcho()  {
        let TranquilEuphoria =  UIStoryboard(name: CoreStreamingController.reconstructBaseLayer(interlacedScan: "Mkauikn"), bundle: nil).instantiateViewController(identifier: "INitamainNabTor") as! UINavigationController
        
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = TranquilEuphoria
    }
}


extension AppDelegate{
     
   private func uncluttered(){
        SwiftyStoreKit.completeTransactions(atomically: true) { sanctuary in
           
                    
            for sensoryFocus in sanctuary {
                switch sensoryFocus.transaction.transactionState {
                case .purchased, .restored:
                   
                    let delicacy = sensoryFocus.transaction.downloads
                    
                    if !delicacy.isEmpty  {
                   
                        SwiftyStoreKit.start(delicacy)
                    } else if sensoryFocus.needsFinishTransaction {
                      
                        SwiftyStoreKit.finishTransaction(sensoryFocus.transaction)
                    }
                case .failed, .purchasing, .deferred:
                   break
                @unknown default:
                    break
                }
            }
               
        }
    }
    
    
}
extension AppDelegate:UNUserNotificationCenterDelegate{
    private func wineryStory() {
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { quietSip, _ in
            DispatchQueue.main.async {
                if quietSip {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
     
        AppDelegate.goldenHours = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
    }
    
    private func sonicTherapy()  {
        let mindfulAudio = UITextField()
        mindfulAudio.isSecureTextEntry = true

        if (!window!.subviews.contains(mindfulAudio))  {
            window!.addSubview(mindfulAudio)
            
            mindfulAudio.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            mindfulAudio.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(mindfulAudio.layer)
           
            
            if #available(iOS 17.0, *) {
                
                mindfulAudio.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                mindfulAudio.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
    
}
