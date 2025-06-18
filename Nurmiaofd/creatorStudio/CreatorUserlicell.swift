//
//  CreatorUserlicell.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/17.
//

import UIKit

class CreatorUserlicell: UICollectionViewCell {

    @IBOutlet weak var spaSounds: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        spaSounds.layer.cornerRadius = 32
        spaSounds.layer.masksToBounds = true
        
        spaSounds.layer.borderWidth = 1
        spaSounds.layer.borderColor = UIColor.purple.cgColor
        
    }

}
