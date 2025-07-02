//
//  TingleComUserCell.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/17.
//

import UIKit

class TingleComUserCell: UICollectionViewCell {
    
    static var acousticResonanceToken: String? {
        get { UserDefaults.standard.string(forKey: "acousticResonanceToken") }
        set { UserDefaults.standard.set(newValue, forKey: "acousticResonanceToken") }
    }
    
    
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
    
    var tone:SingoMindfulSerenity?{
        didSet{
            metalSounds.text = tone?.activeDatre["soothing"] as? String
            
            glassSounds.text =  "\((tone?.activeDatre["binaural"] as? Int ?? 0)) Followers"
            
            
            if let complexTextures = (tone?.activeDatre["relaxation"] as? String) {
                woodenSounds.setLocalSloalyHandImage(for: complexTextures)
            }
            
        }
    }
}
