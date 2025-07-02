//
//  CreatorStudioPopView.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/17.
//

import UIKit
protocol CreatorStudioPopViewDelegate {
    func didichangeglaio(trpe:Int,ajsiu:Dictionary<String,Any>)
}
class CreatorStudioPopView: UIView, UICollectionViewDelegate, UICollectionViewDataSource {
    var oklopp:CreatorStudioPopViewDelegate?
    
    var SleepAids :Array<SingoMindfulSerenity> = Array<SingoMindfulSerenity>()
    
    var BrushingAids :Array<SingoMindfulSerenity > = Array<SingoMindfulSerenity >()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == immersive {
            return SleepAids.count
        }
        return BrushingAids.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == immersive {
            let DelicateTriggersCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CreatorStudioSleepAids", for: indexPath) as! CreatorStudioSleepAids
            DelicateTriggersCell.tone = SleepAids[indexPath.row]
            DelicateTriggersCell.handMovements.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(suresportu)))
            return DelicateTriggersCell
        }
        let DelicateTriggersCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CreatorUserlicell", for: indexPath) as! CreatorUserlicell
        
        if let complexTextures = BrushingAids[indexPath.row].activeDatre["relaxation"] as? String{
            DelicateTriggersCell.spaSounds.setLocalSloalyHandImage(for: complexTextures)
        }
        
        return DelicateTriggersCell
        
    }
   @objc func suresportu()  {
       self.oklopp?.didichangeglaio(trpe: 3, ajsiu: [:])
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == immersive {
            self.oklopp?.didichangeglaio(trpe: 1, ajsiu: SleepAids[indexPath.row].activeDatre)
            return
        }
        self.oklopp?.didichangeglaio(trpe: 2, ajsiu: BrushingAids[indexPath.row].activeDatre)
        
        
    }
    @IBOutlet weak var immersive: UICollectionView!
    
    @IBOutlet weak var micBrushing: UICollectionView!
    
    
    
    
    func upafire()  {
        let lauio = UICollectionViewFlowLayout.init()
        lauio.minimumLineSpacing = 10
        lauio.minimumInteritemSpacing = 10
        lauio.scrollDirection = .horizontal
        lauio.itemSize = CGSize.init(width: 159, height: 230)
        immersive.showsHorizontalScrollIndicator = false
        immersive.backgroundColor = .clear
        immersive.delegate = self
        immersive.dataSource = self
        immersive.register(UINib(nibName: "CreatorStudioSleepAids", bundle: nil), forCellWithReuseIdentifier: "CreatorStudioSleepAids")
        immersive.collectionViewLayout = lauio
        
        
        
        let lauio1 = UICollectionViewFlowLayout.init()
        lauio1.minimumLineSpacing = 7
        lauio1.minimumInteritemSpacing = 7
        lauio1.scrollDirection = .horizontal
        lauio1.itemSize = CGSize.init(width: 64, height: 64)
        micBrushing.showsHorizontalScrollIndicator = false
        micBrushing.backgroundColor = .clear
        micBrushing.delegate = self
        micBrushing.dataSource = self
        micBrushing.register(UINib(nibName: "CreatorUserlicell", bundle: nil), forCellWithReuseIdentifier: "CreatorUserlicell")
        micBrushing.collectionViewLayout = lauio1
    }
    
}
