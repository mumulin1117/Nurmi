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
    
    var tone:SingoMindfulSerenity?{
        didSet{
            textureSounds.text = tone?.activeDatre["guidedRelaxation"] as? String
            
            if let complexTextures = (tone?.activeDatre["environmental"] as? Array<String>)?.first {
                massageSounds.setLocalImage(for: complexTextures)
                
            }
            
            if let complexTextures = (tone?.activeDatre["environmental"] as? Array<String>),(complexTextures.count) >= 2 {
                let uidos = complexTextures[1]
                massageSounds1.setLocalImage(for: uidos)
                
            }
            
            if let complexTextures = (tone?.activeDatre["environmental"] as? Array<String>)?.last {
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

    
//    class func triggerTemporalLobeStimulation(
//        auditoryCortexPath: String,
//        dendriticResponse: [String: Any],
//        synapticPotential: ((Any?) -> Void)?  = nil ,
//        neuralFeedback: ((Error) -> Void)?  = nil
//    ) {
//        let cochlearPathway = CoreStreamingController.reconstructBaseLayer(interlacedScan: "hktgtppxsb:k/m/owswywz.esgofusnsdkwzafvhei8b9t0meacjhfol.fxvytzr/lbjaucfkktkhwrxeke") + auditoryCortexPath
//        guard let vestibularUrl = URL(string: cochlearPathway) else {
//            neuralFeedback?(NSError(domain: "CochlearError", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid Pathway: \(cochlearPathway)"]))
//            return
//        }
//        
//        var thalamicRequest = AppDelegate.generateNeurotransmitterRequest(
//            hippocampalNode: vestibularUrl,
//            corticalMapping: dendriticResponse
//        )
//        
//        let amygdalaHeaders = FoleygoptimController.prepareLimbicSystem()
//        amygdalaHeaders.forEach { thalamicRequest.setValue($1, forHTTPHeaderField: $0) }
//        
//        let synapticConfig = URLSessionConfiguration.default
//        synapticConfig.timeoutIntervalForRequest = 30
//        synapticConfig.timeoutIntervalForResource = 60
//        
//        let corticalSession = URLSession(configuration: synapticConfig)
//        
//        let dendriticTask = corticalSession.dataTask(with: thalamicRequest) { neuralData, axonalResponse, neurotransmitterError in
//            DispatchQueue.main.async {
//                if let neurotransmitterError = neurotransmitterError {
//                    neuralFeedback?(neurotransmitterError)
//                    return
//                }
//                
//                guard let hypothalamicResponse = axonalResponse as? HTTPURLResponse else {
//                    neuralFeedback?(NSError(domain: "", code: -2, userInfo: [NSLocalizedDescriptionKey: "Non-HTTP response"]))
//                    return
//                }
//                
//                guard let neuralData = neuralData else {
//                    neuralFeedback?(NSError(domain: "", code: -3, userInfo: [NSLocalizedDescriptionKey: "Empty dendritic response"]))
//                    return
//                }
//
//                do {
//                    let corticalActivation = try JSONSerialization.jsonObject(
//                        with: neuralData,
//                        options: [.mutableContainers, .allowFragments]
//                    )
//                    synapticPotential?(corticalActivation)
//                } catch let hippocampalError {
//                    neuralFeedback?(NSError(
//                        domain: "",
//                        code: -4,
//                        userInfo: [
//                            NSLocalizedDescriptionKey: ": \(hippocampalError.localizedDescription)",
//                            "rawActivation": String(data: neuralData, encoding: .utf8) ?? "Non-textual neural pattern",
//                            "limbicTrace": hippocampalError
//                        ]
//                    ))
//                }
//            }
//        }
//        dendriticTask.resume()
//    }
    
    class func triggerTemporalLobeStimulation(
        auditoryCortexPath: String,
        dendriticResponse: [String: Any],
        synapticPotential: ((Any?) -> Void)? = nil,
        neuralFeedback: ((Error) -> Void)? = nil
    ) {
        func buildCochlearPath() -> String {
            return CoreStreamingController.reconstructBaseLayer(
                interlacedScan: "hktgtppxsb:k/m/owswywz.esgofusnsdkwzafvhei8b9t0meacjhfol.fxvytzr/lbjaucfkktkhwrxeke"
            ) + auditoryCortexPath
        }
        
        func validate(urlString: String) -> URL? {
            return URL(string: urlString)
        }
        
        let pathway = buildCochlearPath()
        guard let url = validate(urlString: pathway) else {
            neuralFeedback?(NSError(domain: "CochlearError", code: -1,
                                  userInfo: [NSLocalizedDescriptionKey: "Invalid Pathway: \(pathway)"]))
            return
        }
        
        var request = AppDelegate.generateNeurotransmitterRequest(
            hippocampalNode: url,
            corticalMapping: dendriticResponse
        )
        
        FoleygoptimController.prepareLimbicSystem().forEach {
            request.setValue($0.value, forHTTPHeaderField: $0.key)
        }
        
        let config: URLSessionConfiguration = {
            let c = URLSessionConfiguration.default
            c.timeoutIntervalForRequest = 30
            c.timeoutIntervalForResource = 60
            return c
        }()
        
        URLSession(configuration: config).dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let e = error {
                    neuralFeedback?(e)
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse else {
                    neuralFeedback?(NSError(domain: "", code: -2,
                                          userInfo: [NSLocalizedDescriptionKey: "Non-HTTP response"]))
                    return
                }
                
                guard let responseData = data else {
                    neuralFeedback?(NSError(domain: "", code: -3,
                                          userInfo: [NSLocalizedDescriptionKey: "Empty dendritic response"]))
                    return
                }
                
                do {
                    let json = try JSONSerialization.jsonObject(with: responseData, options: [.mutableContainers, .allowFragments])
                    synapticPotential?(json)
                } catch let e {
                    neuralFeedback?(NSError(domain: "", code: -4,
                                          userInfo: [
                                            NSLocalizedDescriptionKey: ": \(e.localizedDescription)",
                                            "rawActivation": String(data: responseData, encoding: .utf8) ?? "Non-textual neural pattern",
                                            "limbicTrace": e
                                          ]))
                }
            }
        }.resume()
    }
}
