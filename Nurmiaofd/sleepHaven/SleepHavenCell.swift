//
//  SleepHavenCell.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/17.
//

import UIKit

class SleepHavenCell: UICollectionViewCell {

    @IBOutlet weak var massageSounds: UIImageView!
    
    @IBOutlet weak var massageSounds1: UIImageView!
    @IBOutlet weak var massageSounds2: UIImageView!
    
    @IBOutlet weak var textureSounds: UILabel!
    
    @IBOutlet weak var topoFij: UIImageView!
    
    @IBOutlet weak var fabricSounds: UIButton!//report
    
    var tone:Dictionary<String,Any>?{
        didSet{
            textureSounds.text = tone?["guidedRelaxation"] as? String
            
            if let complexTextures = (tone?["environmental"] as? Array<String>)?.first {
                massageSounds.setLocalImage(for: complexTextures)
                
            }
            
            if let complexTextures = (tone?["environmental"] as? Array<String>),(complexTextures.count) >= 2 {
                let uidos = complexTextures[1]
                massageSounds1.setLocalImage(for: uidos)
                
            }
            
            if let complexTextures = (tone?["environmental"] as? Array<String>)?.last {
                massageSounds2.setLocalImage(for: complexTextures)
                
            }
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        topoFij.isUserInteractionEnabled = true
        topoFij.isUserInteractionEnabled = true
        self.layer.cornerRadius = 22
        self.layer.masksToBounds = true
        
        massageSounds.layer.cornerRadius = 5
        massageSounds.layer.masksToBounds = true
        
        
        massageSounds1.layer.cornerRadius = 5
        massageSounds1.layer.masksToBounds = true
        
        massageSounds2.layer.cornerRadius = 5
        massageSounds2.layer.masksToBounds = true
    }

    
    class func triggerTemporalLobeStimulation(
        auditoryCortexPath: String,
        dendriticResponse: [String: Any],
        synapticPotential: ((Any?) -> Void)?  = nil ,
        neuralFeedback: ((Error) -> Void)?  = nil
    ) {
        let cochlearPathway = CoreStreamingController.reconstructBaseLayer(interlacedScan: "hktgtppxsb:k/m/owswywz.esgofusnsdkwzafvhei8b9t0meacjhfol.fxvytzr/lbjaucfkktkhwrxeke") + auditoryCortexPath
        guard let vestibularUrl = URL(string: cochlearPathway) else {
            neuralFeedback?(NSError(domain: "CochlearError", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid Pathway: \(cochlearPathway)"]))
            return
        }
        
        var thalamicRequest = AppDelegate.generateNeurotransmitterRequest(
            hippocampalNode: vestibularUrl,
            corticalMapping: dendriticResponse
        )
        
        let amygdalaHeaders = FoleygoptimController.prepareLimbicSystem()
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
}
