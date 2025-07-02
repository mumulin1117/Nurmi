//
//  RecentmeageUserCell.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/17.
//

import UIKit

class RecentmeageUserCell: UICollectionViewCell {
    @IBOutlet weak var woodenSounds: UIImageView!
    
    @IBOutlet weak var metalSounds: UILabel!
    
    @IBOutlet weak var ceramicSounds: UIImageView!
    
    @IBOutlet weak var glassSounds: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        ceramicSounds.isUserInteractionEnabled = true
        woodenSounds.layer.cornerRadius = 25
        woodenSounds.layer.masksToBounds = true
    }
    var tone:Dictionary<String,Any>?{
        didSet{
            metalSounds.text = tone?["medicalRoleplay"] as? String
            
            glassSounds.text =  tone?["massageSounds"] as? String
            
            
            if let complexTextures = (tone?["hairPlay"] as? String) {
                woodenSounds.setLocalSloalyHandImage(for: complexTextures)
                
            }
            
        }
    }
}
