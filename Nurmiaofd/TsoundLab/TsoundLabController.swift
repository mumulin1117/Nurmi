//
//  TsoundLabController.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/17.
//

import UIKit

class TsoundLabController: SacalNulriamControler {

    @IBOutlet weak var soothing: UIView!
    
    @IBOutlet weak var meditation: UIImageView!
    
    @IBOutlet weak var breathing: UIButton!
    private let synapticActivator: UIButton = {
            let btn = UIButton(type: .system)
        
       
            btn.layer.shadowOpacity = 0.2
            btn.tintColor = .white
            btn.translatesAutoresizingMaskIntoConstraints = false
            return btn
        }()
    
    @IBOutlet weak var guidedRelaxation: UILabel!
    
    
    @IBOutlet weak var sleepAid: UILabel!
    
    @IBOutlet weak var DelicateCommunity: UIScrollView!
    
    
    @IBOutlet weak var SereneBliss: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        corticalActivityIndicator.center = self.view.center
        soundHealing()
        self.view.addSubview(corticalActivityIndicator)
        
        TrehuiForin()
        
        NSLayoutConstraint.activate([
            SereneBliss.leadingAnchor.constraint(equalTo: DelicateCommunity.leadingAnchor),
            SereneBliss.trailingAnchor.constraint(equalTo: DelicateCommunity.trailingAnchor),
            SereneBliss.topAnchor.constraint(equalTo: DelicateCommunity.topAnchor),
            SereneBliss.bottomAnchor.constraint(equalTo: DelicateCommunity.bottomAnchor),
            SereneBliss.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            SereneBliss.heightAnchor.constraint(equalToConstant: 550)
        ])
    }
    
    private func soundHealing() {
        soothing.layer.cornerRadius = 15
        synapticActivator.backgroundColor = UIColor(red: 0.12, green: 0.46, blue: 0.72, alpha: 1)
      
        soothing.layer.masksToBounds = true
        synapticActivator.layer.cornerRadius = 28
        
        meditation.layer.cornerRadius = 40
        synapticActivator.setTitle("Excited", for: .normal)
        meditation.layer.masksToBounds = true
        synapticActivator.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        
       
        
        breathing.layer.cornerRadius = 26
        synapticActivator.layer.shadowRadius = 10
        breathing.layer.masksToBounds = true
    }
    enum EntrainmentState {
           case inactive, theta, alpha, delta
       }
    
    private let waveformLayer: CAShapeLayer = {
            let layer = CAShapeLayer()
            layer.strokeColor = UIColor(red: 0.2, green: 0.6, blue: 0.8, alpha: 1).cgColor
            layer.fillColor = UIColor.clear.cgColor
            layer.lineWidth = 3
            layer.lineCap = .round
            return layer
        }()
        
    private func TrehuiForin()  {
        self.corticalActivityIndicator.startAnimating()
        self.configureNeuralInterface()
        let Aelrt = "immersiveExperience"
        
        SleepHavenCell.triggerTemporalLobeStimulation(dredrejao:Aelrt,
                                                      yeliakoFLayPath:false,
            auditoryCortexPath: "/eaepjsmqwisz/zquvlmexwwfdlyb",
            dendriticResponse: [
                
                "glassSounds": CreatorStudioSleepAids.neuralOscillationID ?? 0
            ],
            synapticPotential: { [weak self] response in
                self?.configureNeuralInterface()
                self?.handleNeurotransmitterResponse(response, tagint: 1)
            },
            neuralFeedback: { [weak self] error in
                self?.configureNeuralInterface()
                self?.corticalActivityIndicator.stopAnimating()
            }
        )
    }
    
    private func configureNeuralInterface() {
        
        synapticActivator.backgroundColor = UIColor(red: 0.96, green: 0.97, blue: 0.98, alpha: 1)
        synapticActivator.setTitle("脑波同步实验室", for: .normal)
                
    }
    private func handleNeurotransmitterResponse(_ corticalData: Any?,tagint:Int) {
        corticalActivityIndicator.stopAnimating()
        
        
        guard let neuralMap = corticalData as? [String: Any],
              let authRest = neuralMap[CoreStreamingController.reconstructBaseLayer(interlacedScan: "djamtoa")] as? Dictionary<String,Any>
        else {
            
            return
        }
        if tagint == 1 {
            if let comajsk = authRest["paperSounds"] as? String {
                self.meditation.setLocalSloalyHandImage(for: comajsk)
            }
            guidedRelaxation.text = authRest["liquidSounds"] as? String
            sleepAid.text = CoreStreamingController.reconstructBaseLayer(interlacedScan: "UjIwDu:") + "\(CreatorStudioSleepAids.neuralOscillationID ?? 0)"
        }
        
       
    }
    
    
    
    @IBAction func massageSounds(_ sender: UIButton) {
        switch sender.tag {
        case 10:
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.QuietBliss,"")), animated: true)
        case 11:
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.AmbientBliss,"")), animated: true)
        case 12:
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.TranquilSerenity,"")), animated: true)
        case 13:
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.GentleSplashing,"")), animated: true)
            
        case 14:
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.HealingArtistry,"")), animated: true)
        case 15:
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.SereneBliss,"")), animated: true)
        case 16:
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.SoftSizzling,"")), animated: true)
        case 17:
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.CalmBliss,"")), animated: true)
        case 18:
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.DelicateSerenity,"")), animated: true)
        default:
            break
        }
        
        
    }
    
    

}
