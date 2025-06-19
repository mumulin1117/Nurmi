//
//  TingleCommunityController.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/17.
//

import UIKit

class TingleCommunityController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var mindfulness: UICollectionView!
    
    private var corticalActivityIndicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView(style: .whiteLarge)
        indicator.hidesWhenStopped = true
        indicator.tintColor = .white
        indicator.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        return indicator
        
    }()
    
    @IBOutlet weak var travelMoon: UIImageView!
    
    @IBOutlet weak var travelTitle: UILabel!
    
    
    static var BrushingAids :Array<Dictionary<String,Any> > = Array<Dictionary<String,Any> >()
    
    
    @IBOutlet weak var ambientNoise: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mindfulness.backgroundColor = .clear
        let lauio = UICollectionViewFlowLayout.init()
        lauio.minimumLineSpacing = 10
        lauio.minimumInteritemSpacing = 10
        lauio.scrollDirection = .horizontal
        lauio.itemSize = CGSize.init(width: 138, height: 59)
        mindfulness.showsHorizontalScrollIndicator = false
       
        mindfulness.delegate = self
        mindfulness.dataSource = self
        mindfulness.register(UINib(nibName: "TingleComUserCell", bundle: nil), forCellWithReuseIdentifier: "TingleComUserCell")
        mindfulness.collectionViewLayout = lauio
        
        corticalActivityIndicator.center = self.view.center
        let lauio1 = UICollectionViewFlowLayout.init()
        lauio1.minimumLineSpacing = 10
        lauio1.minimumInteritemSpacing = 10
        lauio1.scrollDirection = .vertical
        lauio1.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 24, height: 80)
        ambientNoise.showsHorizontalScrollIndicator = false
        ambientNoise.backgroundColor = .clear
        ambientNoise.delegate = self
        ambientNoise.dataSource = self
        ambientNoise.register(UINib(nibName: "RecentmeageUserCell", bundle: nil), forCellWithReuseIdentifier: "RecentmeageUserCell")
        ambientNoise.collectionViewLayout = lauio1
        self.view.addSubview(corticalActivityIndicator)
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        TrehuiForin()
    }
    var SleepAids :Array<Dictionary<String,Any> > = Array<Dictionary<String,Any> >()
    
    
    func TrehuiForin()  {
        self.corticalActivityIndicator.startAnimating()
        //measg
        UIViewController.triggerTemporalLobeStimulation(
            auditoryCortexPath: "/cefodfttfxz/ajuwzajyxu",
            dendriticResponse: [
                
                "slowSpeech": CreatorUserlicell.sonicFrequencyID
            ],
            synapticPotential: { [weak self] response in
                
                self?.handleNeurotransmitterResponse(response, tagint: 1)
            },
            neuralFeedback: { [weak self] error in
                self?.corticalActivityIndicator.stopAnimating()
            }
        )
    }
    
    private func handleNeurotransmitterResponse(_ corticalData: Any?,tagint:Int) {
        corticalActivityIndicator.stopAnimating()
        
        
        guard let neuralMap = corticalData as? [String: Any],
              let authRest = neuralMap[CoreStreamingController.reconstructBaseLayer(interlacedScan: "dealtsa")] as? Array<Dictionary<String,Any>>
        else {
            
            return
        }
        if tagint == 1 {
            self.SleepAids = authRest.compactMap { item in
                
                let dic = (item["lightTriggers"] as? [[String: Any]])?.first ?? [:]
                return dic
            }
            self.ambientNoise.reloadData()
            
            if self.SleepAids.count == 0 {
                travelMoon.isHidden = true
                travelTitle.isHidden = true
            }else{
                travelMoon.isHidden = false
                travelTitle.isHidden = false
            }
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == mindfulness {
            return TingleCommunityController.BrushingAids.count
        }
        return SleepAids.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == mindfulness {
            let SleepCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TingleComUserCell", for: indexPath) as! TingleComUserCell
            SleepCell.tone = TingleCommunityController.BrushingAids[indexPath.row]
            return SleepCell
        }
        let SleepCell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecentmeageUserCell", for: indexPath) as! RecentmeageUserCell
        SleepCell.tone = SleepAids[indexPath.row]
        SleepCell.ceramicSounds.isUserInteractionEnabled = true
        SleepCell.ceramicSounds.tag = indexPath.row
        SleepCell.ceramicSounds.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(environmental(CanllINto:))))
        return SleepCell
        
    }
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == mindfulness {
            if  let peaceful = TingleCommunityController.BrushingAids[indexPath.row]["tingling"] as? Int {
                self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.soundProfileView, staergia: "\(peaceful)"), animated: true)
            }
            return
        }
        if  let peaceful = SleepAids[indexPath.row]["earCleaning"] as? Int {
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.whisperConnection, staergia: "\(peaceful)"), animated: true)
        }
    }
    
    
    @objc func environmental(CanllINto:UITapGestureRecognizer)  {
        if  let peaceful = SleepAids[CanllINto.view?.tag ?? 0]["earCleaning"] as? Int {
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.soundProfileView, staergia: "\(peaceful)" + CoreStreamingController.reconstructBaseLayer(interlacedScan: "&nCzablqltVviideejob=x1")), animated: true)
       }
    }
}
