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
            metalSounds.text = tone?["soothing"] as? String
            
            glassSounds.text =  "\((tone?["binaural"] as? Int ?? 0)) Followers"
            
            
            if let complexTextures = (tone?["woodenSounds"] as? String) {
                woodenSounds.setLocalImage(for: complexTextures)
                
            }
            
        }
    }
}
