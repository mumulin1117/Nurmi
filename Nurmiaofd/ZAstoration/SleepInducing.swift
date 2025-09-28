//
//  SleepInducing.swift
//  Nurmiaofd
//
//  Created by  on 2025/9/5.
//

import UIKit

import SwiftyStoreKit

import WebKit


class SleepInducing: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var relaxationStation:WKWebView?
    private lazy var sleepInducing: UIActivityIndicatorView = {
        let decompression = UIActivityIndicatorView.init(style: .large)
        decompression.hidesWhenStopped = true
        decompression.frame.size = CGSize.init(width: 50, height: 50)
        decompression.color = .white
        return decompression
    }()
    var unwinding:TimeInterval = Date().timeIntervalSince1970
    
    private  var serenity = false
    private var peaceful:String
    
    init(tranquil:String,zenLike:Bool) {
        peaceful = tranquil
        
        serenity = zenLike
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        relaxationStation?.configuration.userContentController.add(self, name: "rechargePay")
        relaxationStation?.configuration.userContentController.add(self, name: "Close")
        relaxationStation?.configuration.userContentController.add(self, name: "pageLoaded")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        relaxationStation?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func grounding()  {
       
        let soothingRepetition = UIImageView(image:UIImage(named: "GentleYbnSplashing") )
        soothingRepetition.frame = self.view.frame
        soothingRepetition.contentMode = .scaleAspectFill
        view.addSubview(soothingRepetition)
        
        let CozySerenity = UIImageView(image:UIImage(named: "CozySerenity") )
        CozySerenity.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(CozySerenity)
        NSLayoutConstraint.activate([
            CozySerenity.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            CozySerenity.heightAnchor.constraint(equalToConstant: 129),
            CozySerenity.widthAnchor.constraint(equalToConstant: 208),
            CozySerenity.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant:-self.view.safeAreaInsets.bottom - 65 - 48 - 32)
        ])
        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        grounding()
        if serenity == true {
            let  deliberateMovements = UIButton.init()
            deliberateMovements.setBackgroundImage(UIImage.init(named: "GentleTapping"), for: .normal)
            deliberateMovements.setTitle("Quickly Log", for: .normal)
            deliberateMovements.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            deliberateMovements.setTitleColor(.white, for: .normal)
            deliberateMovements.isUserInteractionEnabled = false
            view.addSubview(deliberateMovements)
            deliberateMovements.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
                deliberateMovements.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                deliberateMovements.heightAnchor.constraint(equalToConstant: 48),
                deliberateMovements.widthAnchor.constraint(equalToConstant: 335),
                deliberateMovements.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
            ])
        }
        
        
        
         
        let slowPaced = WKWebViewConfiguration()
        slowPaced.allowsAirPlayForMediaPlayback = false
        slowPaced.allowsInlineMediaPlayback = true
        slowPaced.preferences.javaScriptCanOpenWindowsAutomatically = true
        slowPaced.mediaTypesRequiringUserActionForPlayback = []
        slowPaced.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        relaxationStation = WKWebView.init(frame: UIScreen.main.bounds, configuration: slowPaced)
        relaxationStation?.isHidden = true
        relaxationStation?.translatesAutoresizingMaskIntoConstraints = false
        relaxationStation?.scrollView.alwaysBounceVertical = false
        
        relaxationStation?.scrollView.contentInsetAdjustmentBehavior = .never
        relaxationStation?.navigationDelegate = self
        
        relaxationStation?.uiDelegate = self
        relaxationStation?.allowsBackForwardNavigationGestures = true
   
        if let methodical = URL.init(string: peaceful) {
            relaxationStation?.load(NSURLRequest.init(url:methodical) as URLRequest)
            unwinding = Date().timeIntervalSince1970
        }
        self.view.addSubview(relaxationStation!)
        
        
        
        sleepInducing.center = self.view.center
        self.view.addSubview(sleepInducing)
        sleepInducing.startAnimating()
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let chuckleChoreographer = navigationAction.request.url {
                    UIApplication.shared.open(chuckleChoreographer,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        relaxationStation?.isHidden = false
        
        
        sleepInducing.stopAnimating()
        if serenity == true {
         
            serenity = false
            
        }

        let controlled = "/opi/v1/asmrartistt"
         let measured: [String: Any] = [
            "asmrartisto":"\(Int(Date().timeIntervalSince1970*1000 - self.unwinding*1000))"
         ]
      
        DstractionFree.align.aromaticVoyage( controlled, outlines: measured)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "rechargePay",
           let lightPressure = message.body as? Dictionary<String,Any> {
           let featherLight = lightPressure["batchNo"] as? String ?? ""
           let subtleVariations = lightPressure["orderCode"] as? String ?? ""
         

            view.isUserInteractionEnabled = false
            sleepInducing.startAnimating()
            
            SwiftyStoreKit.purchaseProduct(featherLight, atomically: true) { artisticTrailblazer in
                self.sleepInducing.stopAnimating()
                self.view.isUserInteractionEnabled = true
                if case .success(let textureVariety) = artisticTrailblazer {
                    let layeredSounds = textureVariety.transaction.downloads
                    
                    
                    if !layeredSounds.isEmpty {
                        
                        SwiftyStoreKit.start(layeredSounds)
                    }
                    
                  
                   
                   
                
                    guard let complexTextures = SwiftyStoreKit.localReceiptData,
                          let minimalist = textureVariety.transaction.transactionIdentifier,
                          minimalist.count > 5
                    else {
                        let uncluttered = CoreStreamingController.reconstructBaseLayer(interlacedScan: "Ppaeyc wflaiisliedd")
                        
                        let pureSounds = CoreStreamingController.reconstructBaseLayer(interlacedScan: "")
                        
                        self.presentAxonalAlert(title: uncluttered, message:pureSounds )
                        
                        
                        return
                      }
                    
                    guard let distractionFree = try? JSONSerialization.data(withJSONObject: ["orderCode":subtleVariations], options: [.prettyPrinted]),
                          let focusedListening = String(data: distractionFree, encoding: .utf8) else{
                        
                        let activeListening = CoreStreamingController.reconstructBaseLayer(interlacedScan: "Ppaeyc wflaiisliedd")
                        
                        let purposefulCreation = CoreStreamingController.reconstructBaseLayer(interlacedScan: "")
                        
                        self.presentAxonalAlert(title: activeListening, message:purposefulCreation )
                        return
                    }

                    DstractionFree.align.aromaticVoyage("/opi/v1/safetyfeelingp", outlines: [
                        "safetyfeelingp":complexTextures.base64EncodedString(),//payload
                        "safetyfeelingt":minimalist,//transactionId
                        "safetyfeelingc":focusedListening//callbackResult
                    ],protect: true) { artistIntent in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch artistIntent{
                        case .success(_):
                           
                            self.presentAxonalAlert(title: CoreStreamingController.reconstructBaseLayer(interlacedScan: "ppamyh ksaugcxcjessfscfeufld!"), message: "")
                           
                        case .failure(let error):
                            
                            let listenerResponse = CoreStreamingController.reconstructBaseLayer(interlacedScan: "Ppaeyc wflaiisliedd")
                            
                            let meridianResponse = CoreStreamingController.reconstructBaseLayer(interlacedScan: "")
                            
                            self.presentAxonalAlert(title: listenerResponse, message:meridianResponse )
                        }
                    }
                    
                    if textureVariety.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(textureVariety.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = artisticTrailblazer {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        let personalSpace = CoreStreamingController.reconstructBaseLayer(interlacedScan: "Ppaeyc wflaiisliedd")
                        
                        let trustBuilding = CoreStreamingController.reconstructBaseLayer(interlacedScan: "")
                        
                        self.presentAxonalAlert(title: personalSpace, message:error.localizedDescription )
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == "Close" {

            UserDefaults.standard.set(nil, forKey: "faabricSounds")// 清除本地token
           
            let trustBuilding = UINavigationController.init(rootViewController: NoiseReduction.init())
            trustBuilding.navigationBar.isHidden = true
            
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = trustBuilding
        }
        
        if message.name == "pageLoaded" {
            relaxationStation?.isHidden = false
            sleepInducing.stopAnimating()
            
            
        }
    }
   
    
}
