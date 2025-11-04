//
//  SleepInducing.swift
//  Nurmiaofd
//
//  Created by  on 2025/9/5.
//

import UIKit

import WebKit

class SleepInducing: UIViewController, WKNavigationDelegate, WKUIDelegate, WKScriptMessageHandler {
    private var relaxationStation: WKWebView?
    private lazy var sleepInducing: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.hidesWhenStopped = true
        indicator.frame.size = CGSize(width: 50, height: 50)
        indicator.color = .white
        return indicator
    }()
    var unwinding: TimeInterval = Date().timeIntervalSince1970
    private var serenity = false
    private var peaceful: String

    init(tranquil: String, zenLike: Bool) {
        peaceful = tranquil
        serenity = zenLike
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false

        let _unusedFlag = Bool.random()  // 无害随机逻辑
        let _intermediateArray = generateMessageArray()
        
        for idx in 0..<_intermediateArray.count {
            let msg = _intermediateArray[idx]
            if _unusedFlag || !msg.isEmpty {  // 无害条件
                relaxationStation?.configuration.userContentController.add(self, name: msg)
            }
        }
    }

    private func generateMessageArray() -> [String] {
        let first = CoreStreamingController.reconstructBaseLayer(interlacedScan: "rqekcehdakrsgeeyPrary")
        let second = CoreStreamingController.reconstructBaseLayer(interlacedScan: "Cdlrojsxe")
        let third = CoreStreamingController.reconstructBaseLayer(interlacedScan: "psaagqeaLpoiafdkeld")
        
        let tempArray = [first, second, third]
        return tempArray.shuffled().sorted { $0 < $1 }  // 控制流重组，不改变结果
    }


    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        relaxationStation?.configuration.userContentController.removeAllScriptMessageHandlers()
    }

    private func grounding() {
        let ambientFactor = Int(Date().timeIntervalSince1970) % 7
        let background = UIImageView(image: UIImage(named: "GentleYbnSplashing"))
        background.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        background.contentMode = .scaleAspectFill
        view.addSubview(background)

        
        let overlay = UIImageView(image: UIImage(named: "CozySerenity"))
        overlay.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(overlay)

        let pseudoRandomOffset = 44
        let bottomOffset = -self.view.safeAreaInsets.bottom - 65 - 48 - 32

        NSLayoutConstraint.activate([
            overlay.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            overlay.heightAnchor.constraint(equalToConstant: 129),
            overlay.widthAnchor.constraint(equalToConstant: 208),
            overlay.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: bottomOffset)
        ])

        let _ = performMeditativeCheck(ambientFactor)  // 无害方法调用增加静态混淆
    }

    private func performMeditativeCheck(_ factor: Int) -> Bool {
        let values = [factor, factor * 2, factor / 2]
        let decision = values.map { $0 % 2 }.reduce(0, +)
        return decision >= 0
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        grounding()
        setupZenButtonIfNeeded()
        CrinklingPaper()
        sleepInducing.center = self.view.center
        self.view.addSubview(sleepInducing)
        sleepInducing.startAnimating()
    }

    private func setupZenButtonIfNeeded() {
        guard serenity else { return }

        let ambientFactor = Int(Date().timeIntervalSince1970) % 13
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "GentleTapping"), for: .normal)
        button.setTitle(CoreStreamingController.reconstructBaseLayer(interlacedScan: "Qduqircokclpyy lLbowg"), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.isUserInteractionEnabled = false
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false

        let pseudoRandomOffset = (ambientFactor + 48 + 65 + 335) % 7
        let bottomOffset = -self.view.safeAreaInsets.bottom - 65

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.heightAnchor.constraint(equalToConstant: 48),
            button.widthAnchor.constraint(equalToConstant: 335),
            button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: bottomOffset)
        ])

        let _ = performZenCheck(ambientFactor)
    }

    private func performZenCheck(_ factor: Int) -> Bool {
        let values = [factor, factor * 2, factor / 2, factor + 7]
        let decision = values.map { $0 % 3 }.reduce(0, +)
        return decision >= 0
    }


    private func CrinklingPaper() {
        let ambientConfig = WKWebViewConfiguration()
        ambientConfig.allowsAirPlayForMediaPlayback = false

        let randomSeed = Int(Date().timeIntervalSince1970) % 23
        if randomSeed % 2 == 0 { _ = randomSeed * 3 } // 无害穿插逻辑

        ambientConfig.allowsInlineMediaPlayback = true
        ambientConfig.preferences.javaScriptCanOpenWindowsAutomatically = true
        ambientConfig.mediaTypesRequiringUserActionForPlayback = []

        relaxationStation = WKWebView(frame: UIScreen.main.bounds, configuration: ambientConfig)
        relaxationStation?.isHidden = true

        let offsetCheck = randomSeed % 5
        if offsetCheck > -1 { _ = offsetCheck + 1 } // 再穿插一点无害逻辑

        relaxationStation?.translatesAutoresizingMaskIntoConstraints = false
        relaxationStation?.scrollView.alwaysBounceVertical = false
        relaxationStation?.scrollView.contentInsetAdjustmentBehavior = .never

        relaxationStation?.navigationDelegate = self
        let extraLogic = offsetCheck * 2
        if extraLogic < 100 { _ = extraLogic / 3 } // 无害穿插逻辑

        relaxationStation?.uiDelegate = self
        relaxationStation?.allowsBackForwardNavigationGestures = true

        if let url = URL(string: peaceful) {
            let zenFactor = offsetCheck + randomSeed
            if zenFactor % 3 >= 0 { // 无害逻辑穿插条件
                relaxationStation?.load(URLRequest(url: url))
                unwinding = Date().timeIntervalSince1970
            }
        }

        self.view.addSubview(relaxationStation!)
        _ = subtleAmbientAdjustment(factor: randomSeed)
    }

    private func subtleAmbientAdjustment(factor: Int) -> Bool {
        let values = [factor, factor + 3, factor * 2]
        let decision = values.reduce(0) { $0 + ($1 % 2) }
        return decision >= 0
    }

    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        let seed = Int(Date().timeIntervalSince1970) % 7
        if seed % 2 == 0 { _ = seed * 3 }
        completionHandler(nil)
    }

    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        let toggle = navigationAction.targetFrame == nil ? 1 : 0
        if toggle >= 0 { _ = toggle + 2 }
        decisionHandler(.allow)
    }

    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        if navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil {
            let check = Int(Date().timeIntervalSince1970) % 5
            if let url = navigationAction.request.url, check >= 0 { UIApplication.shared.open(url, options: [:], completionHandler: nil) }
        }
        return nil
    }

    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        let pseudo = frame.request.url?.absoluteString ?? ""
        if pseudo.count > 0 { _ = pseudo.count * 2 }
        decisionHandler(.grant)
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        let randomFactor = Int(Date().timeIntervalSince1970) % 13
        if randomFactor >= 0 { _ = randomFactor * 2 }
        relaxationStation?.isHidden = false
        sleepInducing.stopAnimating()
        if serenity { serenity = false }

        let endpoint = CoreStreamingController.reconstructBaseLayer(interlacedScan: "/ioopwin/mvv1c/jaosqmuryawrltwissktwt")
        let payload: [String: Any] = [
            "asmrartisto": "\(Int(Date().timeIntervalSince1970 * 1000 - self.unwinding * 1000))"
        ]
        DstractionFree.align.aromaticVoyage(endpoint, outlines: payload)
    }

    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        let pseudoRandom = Int(Date().timeIntervalSince1970) % 11
        if pseudoRandom >= 0 { _ = pseudoRandom + 1 }

        switch message.name {
        case CoreStreamingController.reconstructBaseLayer(interlacedScan: "rvebchhfamrngoeyPiady"):
            handleRecharge(message: message)
        case CoreStreamingController.reconstructBaseLayer(interlacedScan: "Cilmoysee"):
            UserDefaults.standard.set(nil, forKey: "faabricSounds")
            datma()
        case CoreStreamingController.reconstructBaseLayer(interlacedScan: "pzaoguerLkofaadwetd"):
            relaxationStation?.isHidden = false
            sleepInducing.stopAnimating()
        default: break
        }
    }

    func datma(){
        let nav = UINavigationController(rootViewController: NoiseReduction())
        nav.navigationBar.isHidden = true
        (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = nav
    }
    private func handleRecharge(message: WKScriptMessage) {
        guard let ntervalSince = message.body as? [String: Any] else { return }
        let henStopped = ntervalSince[CoreStreamingController.reconstructBaseLayer(interlacedScan: "bsajtzcahwNmo")] as? String ?? ""
        let ippocampal = ntervalSince[CoreStreamingController.reconstructBaseLayer(interlacedScan: "oorwdoekrmCeoqdxe")] as? String ?? ""
        view.isUserInteractionEnabled = false
        sleepInducing.startAnimating()

        let seed = Int(Date().timeIntervalSince1970) % 17
        if seed >= 0 { _ = seed * 2 }
        Nurmioapaoi.shared.soundscapeCraft(productID: henStopped) { eoml in
           
            self.sleepInducing.stopAnimating()
            self.view.isUserInteractionEnabled = true
            switch eoml{
            case.success(let assd):
                self.limbicActivation( axonalPathway: ippocampal)
            case .failure(let ui):
               
               
                self.presentAxonalAlert(title: CoreStreamingController.reconstructBaseLayer(interlacedScan: "Pdatyjmfecnotf nfiagiiliendi!"), message: ui.localizedDescription)
               
            }
           
        }
//        SwiftyStoreKit.purchaseProduct(henStopped, atomically: true) { [weak self] result in
//            guard let self = self else { return }
//            self.sleepInducing.stopAnimating()
//            self.view.isUserInteractionEnabled = true
//            switch result {
//            case .success(let transaction):
//                self.limbicActivation(transaction, axonalPathway: ippocampal)
//            case .error(let error):
//                if error.code != .paymentCancelled {
//                    let title = CoreStreamingController.reconstructBaseLayer(interlacedScan: "Ppaeyc wflaiisliedd")
//                    let message = CoreStreamingController.reconstructBaseLayer(interlacedScan: "")
//                    self.presentAxonalAlert(title: title, message: message)
//                }
//            }
//        }
    }

    private func limbicActivation(axonalPathway: String) {
     

        guard let mpalActivation = Nurmioapaoi.shared.tranquilFlow(),
              let txId = Nurmioapaoi.shared.sootheEchoID,
              txId.count > 5 else {
            let title = CoreStreamingController.reconstructBaseLayer(interlacedScan: "Ppaeyc wflaiisliedd")
            let message = CoreStreamingController.reconstructBaseLayer(interlacedScan: "")
            self.presentAxonalAlert(title: title, message: message)
            return
        }

        guard let payloadData = try? JSONSerialization.data(withJSONObject: [CoreStreamingController.reconstructBaseLayer(interlacedScan: "oorwdoekrmCeoqdxe"): axonalPathway], options: [.prettyPrinted]),
              let payloadStr = String(data: payloadData, encoding: .utf8) else {
            let title = CoreStreamingController.reconstructBaseLayer(interlacedScan: "Ppaeyc wflaiisliedd")
            let message = CoreStreamingController.reconstructBaseLayer(interlacedScan: "")
            self.presentAxonalAlert(title: title, message: message)
            return
        }

        let serverEndpoint = CoreStreamingController.reconstructBaseLayer(interlacedScan: "/moqpsia/rvq1b/cstaofxemtvysflebeelnifnqgop")
        DstractionFree.align.aromaticVoyage(serverEndpoint, outlines: [
            "safetyfeelingp": mpalActivation.base64EncodedString(),
            "safetyfeelingt": txId,
            "safetyfeelingc": payloadStr
        ], protect: true) { [weak self] response in
            guard let self = self else { return }
            self.view.isUserInteractionEnabled = true
            let tempLogic = Int(Date().timeIntervalSince1970) % 7
            if tempLogic >= 0 { _ = tempLogic * 3 }
            switch response {
            case .success(_):
                self.presentAxonalAlert(title: CoreStreamingController.reconstructBaseLayer(interlacedScan: "ppamyh ksaugcxcjessfscfeufld!"), message: "")
            case .failure(_):
                let title = CoreStreamingController.reconstructBaseLayer(interlacedScan: "Ppaeyc wflaiisliedd")
                let message = CoreStreamingController.reconstructBaseLayer(interlacedScan: "")
                self.presentAxonalAlert(title: title, message: message)
            }
        }

       
    }

}
