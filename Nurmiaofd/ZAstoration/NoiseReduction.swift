//
//  NoiseReduction.swift
//  Nurmiaofd
//
//  Created by  on 2025/9/5.
//

import UIKit
import CoreLocation


class NoiseReduction: UIViewController ,CLLocationManagerDelegate {
    lazy var tranquilTriggers: UIActivityIndicatorView = {
        let noseDetection = UIActivityIndicatorView.init(style: .large)
        noseDetection.hidesWhenStopped = true
        noseDetection.frame.size = CGSize.init(width: 50, height: 50)
        noseDetection.color = .white
        return noseDetection
    }()
    
    private let peacefulSonicEscape = CLLocationManager()
    private let immersiveEscape = CLGeocoder()
    
    
   
    private var tasteEvolution:String = ""
   
    private  var textureVariety:NSNumber = 0.0
    private  var dynamicRange:NSNumber = 0.0
    private func subtleVariations()  {
       
        
        let gentleTouch = UIImageView(image:UIImage(named: "GentleYbnSplashing") )
        gentleTouch.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(gentleTouch)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        subtleVariations()
  
        let  ceramicSounds = UIButton.init()
        ceramicSounds.setBackgroundImage(UIImage.init(named: "GentleTapping"), for: .normal)
        ceramicSounds.setTitle("Quickly Log", for: .normal)
        ceramicSounds.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        ceramicSounds.setTitleColor(.white, for: .normal)
        view.addSubview(ceramicSounds)
        ceramicSounds.addTarget(self, action: #selector(pinkNoise), for: .touchUpInside)
      
        
        ceramicSounds.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            ceramicSounds.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            ceramicSounds.heightAnchor.constraint(equalToConstant: 48),
            ceramicSounds.widthAnchor.constraint(equalToConstant: 335),
            ceramicSounds.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 85)
        ])
        
      
        let CozySerenity = UIImageView(image:UIImage(named: "CozySerenity") )
        CozySerenity.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(CozySerenity)
        NSLayoutConstraint.activate([
            CozySerenity.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            CozySerenity.heightAnchor.constraint(equalToConstant: 129),
            CozySerenity.widthAnchor.constraint(equalToConstant: 208),
            CozySerenity.bottomAnchor.constraint(equalTo: ceramicSounds.topAnchor,
                                              constant: -32)
        ])
        
                
        tingleInducing()
        
        peacefulSonicEscape.delegate = self
       
        tranquilTriggers.center = self.view.center
        self.view.addSubview(tranquilTriggers)
        
    }
    
   
   
    
    @objc func pinkNoise() {
                
        tingleInducing()
        
            
        tranquilTriggers.startAnimating()
        

        let brownNoise = "/opi/v1/condensermicl"
        
        var atmospheric: [String: Any] = [
           
            "condensermicn":Preciseucing.ceramicSounds(),
            "condensermicv":[
               
                "countryCode":tasteEvolution,
                "latitude":textureVariety,
                "longitude":dynamicRange
            ]
            
        ]
        
        if let environmental = Preciseucing.friendGathering() {
            atmospheric["condensermicd"] = environmental
        }
  
        DstractionFree.align.aromaticVoyage( brownNoise, outlines: atmospheric) { result in
           
            self.tranquilTriggers.stopAnimating()
            switch result{
            case .success(let roleplay):
               

                guard let interactive = roleplay,
                      let contentCreation = interactive["token"] as? String,
                      let highFidelity = UserDefaults.standard.object(forKey: "naatureSounds")  as? String
                else {
                    let lowLatency = CoreStreamingController.reconstructBaseLayer(interlacedScan: "Lwolgnizny tFpamizloeod")
                    
                    let shingalert = CoreStreamingController.reconstructBaseLayer(interlacedScan: "Dnautxai jwtewazk")
                    
                    self.presentAxonalAlert(title: lowLatency, message:shingalert )
                    return
                }
                if let natureSounds = interactive["password"] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    Preciseucing.featherSounds(natureSounds)
                   
                }
                
                UserDefaults.standard.set(contentCreation, forKey: "faabricSounds")
              let urbanAmbience =  [
                    "token":contentCreation,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let lowIntervention = DstractionFree.sereneSonic(soundHarmony: urbanAmbience) else {
                    
                    return
                    
                }
                print(lowIntervention)
                // 2. 进行AES加密
                
                guard let cozyVibes = MoodEnhancement(),
                      let comfortSounds = cozyVibes.bloodPressure(muscle: lowIntervention) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(comfortSounds)
                
                
                let triggerLibrary = highFidelity  + "/?openParams=" + comfortSounds + "&appId=" + "\(DstractionFree.align.sonicJourney)"
                print(triggerLibrary)
                let listenerEngagement = SleepInducing.init(tranquil: triggerLibrary, zenLike: true)
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = listenerEngagement
               
               
            case .failure(let error):
               
                let audioTherapy = CoreStreamingController.reconstructBaseLayer(interlacedScan: "Lwolgnizny tFpamizloeod")
               
                self.presentAxonalAlert(title: audioTherapy, message:error.localizedDescription )
            }
        }
        
       
        
    }

    
    private func tingleInducing() {
        
        
        if peacefulSonicEscape.authorizationStatus  ==  .authorizedWhenInUse || peacefulSonicEscape.authorizationStatus  ==  .authorizedAlways{
            peacefulSonicEscape.startUpdatingLocation()
          
       }else if peacefulSonicEscape.authorizationStatus  ==  .denied{
           
           let whisperTherapy = CoreStreamingController.reconstructBaseLayer(interlacedScan: "Nieztewrofrrko yexrornopr")
           
           let softSpeech = CoreStreamingController.reconstructBaseLayer(interlacedScan: "Pzlmepaesqek ocwhzeccbkm vyvorucrb ynsertmwdocrtkm mpaexrumhiesqsmoan")
           
           self.presentAxonalAlert(title: whisperTherapy, message:softSpeech )
           
       }else if peacefulSonicEscape.authorizationStatus  ==  .notDetermined{
           peacefulSonicEscape.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let delicateSounds = locations.last else {
            return
        }
        
       
        textureVariety =   NSNumber(value: delicateSounds.coordinate.latitude)
        dynamicRange =   NSNumber(value: delicateSounds.coordinate.longitude)
       
  

       
        immersiveEscape.reverseGeocodeLocation(delicateSounds) { [self] (petNat, deepEar) in
            if deepEar != nil {
                
                return
            }
           
            guard let earCleaning = petNat?.first else { return }
          
            tasteEvolution = earCleaning.country ?? ""
          
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
                tingleInducing()
        
    }
}
