//
//  CreatorStudioSleepAids.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/17.
//

import UIKit

class CreatorStudioSleepAids: UICollectionViewCell {
    static var neuralOscillationID: Int? {
        get { UserDefaults.standard.object(forKey: "neuralOscillationID") as? Int }
        set { UserDefaults.standard.set(newValue, forKey: "neuralOscillationID") }
    }
    @IBOutlet weak var visualTriggers: UILabel!
    
    
    @IBOutlet weak var audioVisual: UIImageView!
    
    @IBOutlet weak var whisperCommunity: UILabel!
    
    @IBOutlet weak var soundHealing: UILabel!
   
    var tone:SingoMindfulSerenity?{
        didSet{
            if let complexTextures = tone?.activeDatre["zenLike"] as? String{
                audioVisual.setLocalSloalyHandImage(for: complexTextures)
                audioVisual.autoresizingMask = [.flexibleWidth, .flexibleHeight]
               
                visualTriggers.isHidden = ((tone?.activeDatre["centering"] as? Int) != -1)
                
                whisperCommunity.text = tone?.activeDatre["harmonious"] as? String
                soundHealing.text = "See \(Int.random(in: 50...70))"
                
                
            }
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        visualTriggers.layer.cornerRadius = 10
        visualTriggers.layer.masksToBounds = true
        audioVisual.isUserInteractionEnabled = true
        handMovements.isUserInteractionEnabled = true
        audioVisual.layer.cornerRadius = 18
        audioVisual.layer.masksToBounds = true
        
    }

    @IBOutlet weak var handMovements: UIImageView!
    
    
}

