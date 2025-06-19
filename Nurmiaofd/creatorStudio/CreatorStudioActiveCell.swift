//
//  CreatorStudioActiveCell.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/17.
//

import UIKit
//active cell
class CreatorStudioActiveCell: UITableViewCell {
    
    
    @IBOutlet weak var Jidonscase: UILabel!
    
    @IBOutlet weak var cozyVibes: UIImageView!
    
    @IBOutlet weak var comfortSounds: UILabel!
    
    
    @IBOutlet weak var triggerLibrary: UILabel!
    
    @IBOutlet weak var Uhzhugn: UIView!
    
    @IBOutlet weak var asmrArtist: UILabel!
    
    @IBOutlet weak var audioTherapy: UIImageView!
    
    @IBOutlet weak var listenerEngagement: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        
        cozyVibes.layer.cornerRadius = 19
       
        audioTherapy.layer.masksToBounds = true
        
        sensoryStimulation()
        
        
        Uhzhugn.layer.masksToBounds = true
        
        Uhzhugn.layer.cornerRadius = 20
    }
    
    var tone:Dictionary<String,Any>?{
        didSet{
            if let complexTextures = tone?["complexTextures"] as? String{
                cozyVibes.setLocalImage(for: complexTextures)
            }
            comfortSounds.text =  tone?["controlled"] as? String ?? ""
            triggerLibrary.text =  "#" + (tone?["textureVariety"] as? String ?? "")
            asmrArtist.text = tone?["lightPressure"] as? String
            listenerEngagement.text = tone?["featherLight"] as? String
            
            if let complexTextures = (tone?["activityUserVoList"] as? Array<Dictionary<String,Any>>)?.first,let uimg = complexTextures["focusedListening"] as? String {
                audioTherapy.setLocalImage(for: uimg)
               
            }else{
                audioTherapy.image = UIImage(named: "zhiwenr")
                
            }
            Jidonscase.text = "\((tone?["subtleVariations"] as? Int) ?? 0) Joined"
            
        }
    }
    
    
    private func sensoryStimulation()  {
        cozyVibes.layer.masksToBounds = true
        
        audioTherapy.layer.cornerRadius = 11
    }

 
    
}
