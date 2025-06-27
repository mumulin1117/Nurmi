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
        soothing.layer.masksToBounds = true
        
        meditation.layer.cornerRadius = 40
        meditation.layer.masksToBounds = true
        
        
        breathing.layer.cornerRadius = 26
        breathing.layer.masksToBounds = true
    }
    func TrehuiForin()  {
        self.corticalActivityIndicator.startAnimating()
        let ger = "/eaepjsmqwisz/zquvlmexwwfdlyb"
        
        SleepHavenCell.triggerTemporalLobeStimulation(
            auditoryCortexPath: ger,
            dendriticResponse: [
                
                "glassSounds": CreatorStudioSleepAids.neuralOscillationID ?? 0
            ],
            synapticPotential: { [weak self] response in
                
                self?.handleNeurotransmitterResponse(response, tagint: 1)
            },
            neuralFeedback: { [weak self] error in
                self?.corticalActivityIndicator.stopAnimating()
            }
        )
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
                self.meditation.setLocalImage(for: comajsk)
            }
            guidedRelaxation.text = authRest["liquidSounds"] as? String
            sleepAid.text = CoreStreamingController.reconstructBaseLayer(interlacedScan: "UjIwDu:") + "\(CreatorStudioSleepAids.neuralOscillationID ?? 0)"
        }
        
       
    }
    @IBAction func massageSounds(_ sender: UIButton) {
        switch sender.tag {
        case 10:
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.profileSettings), animated: true)
        case 11:
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.soundFollowing), animated: true)
        case 12:
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.soundMoments), animated: true)
        case 13:
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.soundHistory), animated: true)
            
        case 14:
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.soundProfile), animated: true)
        case 15:
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.soundSettings), animated: true)
        case 16:
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.soundLocations), animated: true)
        case 17:
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.soundCollection), animated: true)
        case 18:
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.soundTransactions), animated: true)
        default:
            break
        }
        
        
    }
    
    

}
