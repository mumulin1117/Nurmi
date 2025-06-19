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
        AppDelegate.cheingsoothingRepetition(Forireson:(TingleComUserCell.acousticResonanceToken == nil))
        window?.makeKeyAndVisible()
        SwiftyStoreKit.completeTransactions(atomically: true) { _ in}
        return true
    }

   class func cheingsoothingRepetition(Forireson:Bool)  {
        if Forireson == true {
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = UIStoryboard(name: CoreStreamingController.reconstructBaseLayer(interlacedScan: "Mfauinn"), bundle: nil).instantiateViewController(identifier: "Juisaofiuek") as! UINavigationController
            return
        }
        
       ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = UIStoryboard(name: CoreStreamingController.reconstructBaseLayer(interlacedScan: "Mkauikn"), bundle: nil).instantiateViewController(identifier: "INitamainNabTor") as! UINavigationController
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
    
}

