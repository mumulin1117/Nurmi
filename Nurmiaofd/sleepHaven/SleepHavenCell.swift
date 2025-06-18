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

}
