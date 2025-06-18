//
//  FoleygoptimController.swift
//  Nurmiaofd
//
//  Created by mumu on 2025/6/18.
//

import UIKit
import SwiftyStoreKit
import WebKit
class FoleygoptimController: UIViewController {
    private var corticalActivityIndicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView(style: .whiteLarge)
        indicator.hidesWhenStopped = true
        indicator.tintColor = .white
        indicator.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
       
        return indicator
        
    }()
    
    private var localSourcing:WKWebView?
    
    private  var leaglePath:String
    
    var Pauuo: SoundNavigationPath
    init(arpeggiatorPro: SoundNavigationPath, staergia: String = "") {
        self.Pauuo = arpeggiatorPro
      
        self.leaglePath = arpeggiatorPro.buildSoundPath(parameters: staergia)
         
        super.init(nibName: nil, bundle: nil)
     }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let convertibleStyle = UIImageView(frame: UIScreen.main.bounds)
        
        convertibleStyle.image = UIImage.init(named: "whispering")
        convertibleStyle.contentMode = .scaleAspectFill
        view.addSubview(convertibleStyle)
        
        
        
        
        let multiFunction = WKWebViewConfiguration()
        
        multiFunction.allowsInlineMediaPlayback = true
        multiFunction.mediaTypesRequiringUserActionForPlayback = []
        
        let insights = WKUserContentController()
        
        
        [
            "RelaxingHeaven", "GentleTrickling", "QuietHeaven",
            "CozyParadise","SereneHeaven","SlowHeaven","DelicateParadise","SoftGushing"
            
        ].forEach { handler in
            insights.add(self, name: handler)
        }
        multiFunction.userContentController = insights
        localSourcing = WKWebView(
            frame: UIScreen.main.bounds,
            configuration: multiFunction
        )
        localSourcing?.navigationDelegate = self
        localSourcing?.backgroundColor = .clear
        localSourcing?.isHidden = true
        localSourcing?.backgroundColor = .clear
        localSourcing?.scrollView.bounces = false
        localSourcing?.uiDelegate = self
        
        
        localSourcing?.scrollView.contentInsetAdjustmentBehavior = .never
        corticalActivityIndicator.center = self.view.center
       
        if let givingBack = localSourcing  {
            
            self.view.addSubview(givingBack)
            self.view.addSubview(corticalActivityIndicator)
            self.corticalActivityIndicator.startAnimating()
            
            if  let url = URL(string: leaglePath ) {
                givingBack.load(URLRequest(url: url))
            }
            
        }
        
  
    }
    
    
   
    
    
    private func breathableMaterial(wick:String)  {
        SwiftyStoreKit.purchaseProduct(wick, atomically: true) { psResult in
            
            self.corticalActivityIndicator.stopAnimating()
            
            self.view.isUserInteractionEnabled = true
            if case .success(let psPurch) = psResult {
                
                let modularSystem = psPurch.transaction.downloads
                if !modularSystem.isEmpty {
                    SwiftyStoreKit.start(modularSystem)
                }
                
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
                self.presentAxonalAlert(title: "pay successful!", message: "")
                
                self.localSourcing?.evaluateJavaScript("GentleTrickling()", completionHandler: nil)
            }else if case .error(let error) = psResult {
                
                if error.code == .paymentCancelled {
                    self.view.isUserInteractionEnabled = true
                    return
                }
                self.presentAxonalAlert(title: "pay failed!", message: error.localizedDescription)
               
            }
        }
    }
    
}
    
extension FoleygoptimController:WKScriptMessageHandler, WKNavigationDelegate, WKUIDelegate{
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: DispatchWorkItem(block: {
            self.localSourcing?.isHidden = false
            self.corticalActivityIndicator.stopAnimating()
        }))
        
    }
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        if message.name == "RelaxingHeaven" {
            guard let cultural = message.body  as? String else {
                return
            }
           
            self.corticalActivityIndicator.startAnimating()
            self.view.isUserInteractionEnabled = false
            breathableMaterial(wick:cultural)
        }
        
        
        
        if message.name == "QuietHeaven" {
            if let hat =  message.body as? String{
                
                self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: .emptyPath, staergia: hat), animated: true)
            }
            
        }
        if message.name == "DelicateParadise" {
            self.navigationController?.popViewController(animated: true)
            
        }
        
        if message.name == "SereneHeaven" {
            self.navigationController?.popViewController(animated: true)
            
        }
        
        if message.name == "SlowHeaven" {
            UIViewController.neuralOscillationID = nil
            UIViewController.acousticResonanceToken = nil
            AppDelegate.cheingsoothingRepetition(Forireson: true)
        }
        
        
        
        if message.name == "SoftGushing" {
            //拨打电话
            guard let callednumber = message.body  as? String else {
                return
            }
            
            guard let url = URL(string: "telprompt://\(callednumber)"),
                  UIApplication.shared.canOpenURL(url) else {
                
                self.presentAxonalAlert(title: "Unable to make phone calls", message: "")
               
                return
            }
            
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
            
        }
        
        
        
    }
}
