//
//  TingleComUserCell.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/17.
//

import UIKit

class TingleComUserCell: UICollectionViewCell {
    @IBOutlet weak var woodenSounds: UIImageView!
    
    @IBOutlet weak var metalSounds: UILabel!

    @IBOutlet weak var glassSounds: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        woodenSounds.layer.cornerRadius = 19.5
        self.layer.cornerRadius = 19
        self.layer.masksToBounds = true
        woodenSounds.layer.masksToBounds = true
    }
    
    var tone:Dictionary<String,Any>?{
        didSet{
            metalSounds.text = tone?["soothing"] as? String
            
            glassSounds.text =  "\((tone?["binaural"] as? Int ?? 0)) Followers"
            
            
            if let complexTextures = (tone?["relaxation"] as? String) {
                woodenSounds.setLocalImage(for: complexTextures)
            }
            
        }
    }
}
