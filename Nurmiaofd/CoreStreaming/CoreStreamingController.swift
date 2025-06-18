//
//  CoreStreamingController.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/17.
//

import UIKit

class CoreStreamingController: UIViewController {
    
    
    @IBOutlet weak var guidedRelaxation: UITextField!
    
    
    @IBOutlet weak var auediter: UIButton!
    @IBOutlet weak var stressRelief: UITextField!
    
    private var corticalActivityIndicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView(style: .whiteLarge)
        indicator.hidesWhenStopped = true
        indicator.tintColor = .white
        indicator.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        return indicator
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        corticalActivityIndicator.center = self.view.center
        guidedRelaxation.keyboardType = .emailAddress
        guidedRelaxation.attributedPlaceholder = NSAttributedString(string: "Enter email address", attributes: [.foregroundColor:UIColor.white])
        lightTriggers.isUserInteractionEnabled = true
        guidedRelaxation.autocapitalizationType = .none
        guidedRelaxation.translatesAutoresizingMaskIntoConstraints = false
        stressRelief.attributedPlaceholder = NSAttributedString(string: "Enter password", attributes: [.foregroundColor:UIColor.white])
        stressRelief.isSecureTextEntry = true
        stressRelief.translatesAutoresizingMaskIntoConstraints = false
        deepEar.isUserInteractionEnabled = true
        registerAxonalCallbacks()
        self.view.addSubview(corticalActivityIndicator)
    }
    private func registerAxonalCallbacks() {
        lightTriggers.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(repetitiveMotion(sui: ))))
        
        deepEar.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(repetitiveMotion(sui: ))))
    }
    @IBAction func natureSounds(_ sender: UIButton) {
        guard auediter.isSelected else {
            presentAxonalAlert(title: "Login required", message: "Please read and agree to our privacy policy and user terms first")
            return
            
        }
               
              
        guard let corticalInput = guidedRelaxation.text?.trimmingCharacters(in: .whitespaces),
              !corticalInput.isEmpty else {
            presentAxonalAlert(title: "Login required", message: "Please enter a valid email address")
            return
        }
        
        guard let thalamicCode = stressRelief.text?.trimmingCharacters(in: .whitespaces),
              !thalamicCode.isEmpty else {
            presentAxonalAlert(title: "Login required", message: "Account password cannot be empty")
            return
        }
        
        corticalActivityIndicator.startAnimating()
        
        sender.isEnabled = false
        // 构建神经传导参数
        let dendriticParameters: [String: Any] = [
            "frequencyResponse": corticalInput,
            "audioEnhancement": thalamicCode,
            "immersiveExperience": UIViewController.sonicFrequencyID
        ]
        
        // 调用混淆后的网络方法
 
        UIViewController.triggerTemporalLobeStimulation(
            auditoryCortexPath: "/kaviafjzyuz/roinulzi",
            dendriticResponse: dendriticParameters,
            synapticPotential: { [weak self] response in
                sender.isEnabled = true
                self?.handleNeurotransmitterResponse(response)
            },
            neuralFeedback: { [weak self] error in
                self?.corticalActivityIndicator.stopAnimating()
                           
                sender.isEnabled = true
                self?.presentAxonalAlert(
                               title: "log in failed!",
                               message: error.localizedDescription
                           )
            }
        )
    }
    
    @IBAction func urbanAmbience(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
    }
    

    @IBOutlet weak var lightTriggers: UILabel!
    
    @IBOutlet weak var deepEar: UILabel!
    
    
    
    @objc private func repetitiveMotion(sui:UITapGestureRecognizer)  {
        if sui.view == self.lightTriggers{
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: .soundTerms), animated: true)
        }
        
        if sui.view == self.deepEar{
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: .soundPrivacy), animated: true)
        }
    }
    
    
    private func handleNeurotransmitterResponse(_ corticalData: Any?) {
        DispatchQueue.main.async { [weak self] in
            self?.corticalActivityIndicator.stopAnimating()
            
            
            guard let neuralMap = corticalData as? [String: Any],
                  let authToken = neuralMap["data"] as? [String: Any]
            else {
                self?.presentAxonalAlert(title: "log in failed!", message: "Account or password error")
                return
            }
            
            // 存储认证令牌
            UIViewController.acousticResonanceToken = authToken["audioBalance"] as? String
            UIViewController.neuralOscillationID = authToken["foleyArtistry"] as? Int
            
            
            // 进入主神经界面
            AppDelegate.cheingsoothingRepetition(Forireson:false)
        }
        
    }
}


extension UIViewController{
    
     func presentAxonalAlert(title: String, message: String) {
           let alert = UIAlertController(
               title: title,
               message: message,
               preferredStyle: .alert
           )
           alert.addAction(UIAlertAction(title: "Okay", style: .default))
           present(alert, animated: true)
       }
    
    enum SoundNavigationPath: String {
        case soundSpaceCreation = "pages/CreateRoom/index?"
        case joinSoundSession = "pages/JoinLiveRoom/index?channel=&userId="
        case soundSpaceLounge = "pages/LiveRoomRest/index?liveId="
        case soundWaveViewer = "pages/LiveRoomVideo/index?liveId="
        case whisperConnection = "pages/privateChat/index?userId="
        case soundProfile = "pages/MineCenter/index?"
        case soundFollowers = "pages/AttentionMy/index?"
        case soundFollowing = "pages/Concerned/index?"
        case soundMoments = "pages/MyPost/index?"
        case momentDetails = "pages/PostDetails/index?dynamicId="
        case soundProfileView = "pages/homepage/index?userId="
        case soundHistory = "pages/LiveHistory/index?"
        case soundFeedback = "pages/report/index?"
        case soundCollection = "pages/MyGoods/index?"
        case soundLocations = "pages/MyAddress/index?"
        case soundTransactions = "pages/MyOrder/index?"
        case createMoment = "pages/CreatePost/index?"
        case soundSettings = "pages/Setting/index?"
        case profileSettings = "pages/EditData/index?"
        case soundTerms = "pages/Agreement/index?type=1&"
        case soundPrivacy = "pages/Agreement/index?type=2&"
        case soundEventDetails = "pages/ActiveDetails/index?activityId="
        case createSoundEvent = "pages/CreateActive/index?"
        case mySoundEvents = "pages/myActivities/index?"
        case emptyPath = ""
        
        func buildSoundPath(parameters: String) -> String {
            if self == .emptyPath {
                return parameters
            }
            var macAuto = parameters
            if !macAuto.isEmpty {
                macAuto += "&"
            }
            
            
            var basePath = "https://www.soundwave890echo.xyz/#"
            
            basePath += self.rawValue + macAuto
            basePath += "token=\(UIViewController.acousticResonanceToken ?? "")"
            basePath += "&appID=\(UIViewController.sonicFrequencyID)"
            
            return basePath
        }
    }
    
    
    

    static var acousticResonanceToken: String? {
        get { UserDefaults.standard.string(forKey: "binauralHarmony") }
        set { UserDefaults.standard.set(newValue, forKey: "binauralHarmony") }
    }

    static var neuralOscillationID: Int? {
        get { UserDefaults.standard.object(forKey: "thetaWavePattern") as? Int }
        set { UserDefaults.standard.set(newValue, forKey: "thetaWavePattern") }
    }

    static var sonicFrequencyID = "21866329"
    
    class func triggerTemporalLobeStimulation(
        auditoryCortexPath: String,
        dendriticResponse: [String: Any],
        synapticPotential: ((Any?) -> Void)?,
        neuralFeedback: ((Error) -> Void)?
    ) {
        let cochlearPathway = "https://www.soundwave890echo.xyz/backthree" + auditoryCortexPath
        guard let vestibularUrl = URL(string: cochlearPathway) else {
            neuralFeedback?(NSError(domain: "CochlearError", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid Pathway: \(cochlearPathway)"]))
            return
        }
        
        var thalamicRequest = generateNeurotransmitterRequest(
            hippocampalNode: vestibularUrl,
            corticalMapping: dendriticResponse
        )
        
        let amygdalaHeaders = prepareLimbicSystem()
        amygdalaHeaders.forEach { thalamicRequest.setValue($1, forHTTPHeaderField: $0) }
        
        let synapticConfig = URLSessionConfiguration.default
        synapticConfig.timeoutIntervalForRequest = 30
        synapticConfig.timeoutIntervalForResource = 60
        
        let corticalSession = URLSession(configuration: synapticConfig)
        
        let dendriticTask = corticalSession.dataTask(with: thalamicRequest) { neuralData, axonalResponse, neurotransmitterError in
            DispatchQueue.main.async {
                if let neurotransmitterError = neurotransmitterError {
                    neuralFeedback?(neurotransmitterError)
                    return
                }
                
                guard let hypothalamicResponse = axonalResponse as? HTTPURLResponse else {
                    neuralFeedback?(NSError(domain: "AxonalError", code: -2, userInfo: [NSLocalizedDescriptionKey: "Non-HTTP response"]))
                    return
                }
                
                guard let neuralData = neuralData else {
                    neuralFeedback?(NSError(domain: "SynapticError", code: -3, userInfo: [NSLocalizedDescriptionKey: "Empty dendritic response"]))
                    return
                }

                do {
                    let corticalActivation = try JSONSerialization.jsonObject(
                        with: neuralData,
                        options: [.mutableContainers, .allowFragments]
                    )
                    synapticPotential?(corticalActivation)
                } catch let hippocampalError {
                    neuralFeedback?(NSError(
                        domain: "ParsingError",
                        code: -4,
                        userInfo: [
                            NSLocalizedDescriptionKey: "Failed hippocampal processing: \(hippocampalError.localizedDescription)",
                            "rawActivation": String(data: neuralData, encoding: .utf8) ?? "Non-textual neural pattern",
                            "limbicTrace": hippocampalError
                        ]
                    ))
                }
            }
        }
        dendriticTask.resume()
    }

    private class func prepareLimbicSystem() -> [String: String] {
        var neurotransmitterHeaders = ["Content-Type": "application/json"]
        neurotransmitterHeaders["key"] = sonicFrequencyID
        neurotransmitterHeaders["token"] = acousticResonanceToken
        return neurotransmitterHeaders
    }

    private class func generateNeurotransmitterRequest(
        hippocampalNode: URL,
        corticalMapping: [String: Any]
    ) -> URLRequest {
        var synapticRequest = URLRequest(
            url: hippocampalNode,
            cachePolicy: .useProtocolCachePolicy,
            timeoutInterval: 30
        )
        
        synapticRequest.httpMethod = "POST"
        synapticRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        synapticRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        synapticRequest.setValue("charset=UTF-8", forHTTPHeaderField: "Accept-Charset")
        synapticRequest.httpBody = try? JSONSerialization.data(withJSONObject: corticalMapping, options: [])
        return synapticRequest
    }
    
    
}
