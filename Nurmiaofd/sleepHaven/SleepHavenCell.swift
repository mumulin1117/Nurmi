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
                massageSounds.setLocalSloalyHandImage(for: complexTextures)
                
            }
            
            if let complexTextures = (tone?.activeDatre["environmental"] as? Array<String>),(complexTextures.count) >= 2 {
                let uidos = complexTextures[1]
                massageSounds1.setLocalSloalyHandImage(for: uidos)
                
            }
            
            if let complexTextures = (tone?.activeDatre["environmental"] as? Array<String>)?.last {
                massageSounds2.setLocalSloalyHandImage(for: complexTextures)
                
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
        dredrejao:String,
        yeliakoFLayPath:Bool,
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
        if yeliakoFLayPath == true {
            return
        }
        FoleygoptimController.prepareLimbicSystem().forEach {
            request.setValue($0.value, forHTTPHeaderField: $0.key)
        }
        
        let setingcondry: URLSessionConfiguration = {
            let c = URLSessionConfiguration.default
            c.timeoutIntervalForRequest = 30
            c.timeoutIntervalForResource = 60
            return c
        }()
        
        URLSession(configuration: setingcondry).dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let e = error {
                    neuralFeedback?(e)
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse ,dredrejao.count > 3 else {
                    neuralFeedback?(NSError(domain: "", code: -2,
                                          userInfo: [NSLocalizedDescriptionKey: "Non-HTTP response"]))
                    return
                }
                
                guard let responseData = data  ,dredrejao.count > 3 else {
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
