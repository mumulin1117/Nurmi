//
//  TingleCommunityController.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/17.
//

import UIKit

class TingleCommunityController: SacalNulriamControler,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var mindfulness: UICollectionView!
    private let switchBackground: UIView = {
        let view = UIView(frame: .zero)
        
        view.layer.cornerRadius = 16
       
        return view
        
    }()
    
    
    @IBOutlet weak var travelMoon: UIImageView!
    
    @IBOutlet weak var travelTitle: UILabel!
    
    
    static var BrushingAids :Array<SingoMindfulSerenity > = Array<SingoMindfulSerenity >()
    
    
    @IBOutlet weak var ambientNoise: UICollectionView!
    
    
    func unwinding()  {
        mindfulness.showsHorizontalScrollIndicator = false
        switchBackground.backgroundColor = UIColor(white: 0.95, alpha: 1)
        mindfulness.delegate = self
        mindfulness.dataSource = self
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        mindfulness.backgroundColor = .clear
        let lauio = UICollectionViewFlowLayout.init()
        lauio.minimumLineSpacing = 10
        switchBackground.translatesAutoresizingMaskIntoConstraints = false
        lauio.minimumInteritemSpacing = 10
        
        if self.view.frame.width == 1 {
            switchBackground.addSubview(switchThumb)
        }
        lauio.scrollDirection = .horizontal
        lauio.itemSize = CGSize.init(width: 138, height: 59)
        unwinding()
        mindfulness.register(UINib(nibName: "TingleComUserCell", bundle: nil), forCellWithReuseIdentifier: "TingleComUserCell")
        mindfulness.collectionViewLayout = lauio
        
        corticalActivityIndicator.center = self.view.center
        
        neurologicalResponse()
        
    }
    
    private let switchThumb: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .white
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    func neurologicalResponse() {
        let lauio1 = UICollectionViewFlowLayout.init()
        lauio1.minimumLineSpacing = 10
        lauio1.minimumInteritemSpacing = 10
        
        if self.view.frame.width == 1 {
            self.view.addSubview(switchBackground)
        }
        
        
        
        
        lauio1.scrollDirection = .vertical
        lauio1.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 24, height: 80)
        ambientNoise.showsHorizontalScrollIndicator = false
        ambientNoise.backgroundColor = .clear
        audioEnhancement()
        ambientNoise.collectionViewLayout = lauio1
        self.view.addSubview(corticalActivityIndicator)
    }
    
    func audioEnhancement()  {
        ambientNoise.delegate = self
        ambientNoise.dataSource = self
        ambientNoise.register(UINib(nibName: "RecentmeageUserCell", bundle: nil), forCellWithReuseIdentifier: "RecentmeageUserCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        TrehuiForin()
    }
    var SleepAids :Array<Dictionary<String,Any> > = Array<Dictionary<String,Any> >()
    
    
    func TrehuiForin()  {
        switchThumb.layer.cornerRadius = 13
        switchThumb.layer.shadowRadius = 2
        switchThumb.layer.shadowOpacity = 0.2
        self.corticalActivityIndicator.startAnimating()
        let ger = "/cefodfttfxz/ajuwzajyxu"
        switchBackground.translatesAutoresizingMaskIntoConstraints = false
        SleepHavenCell.triggerTemporalLobeStimulation(dredrejao:"immersiveExperience",
                                                      yeliakoFLayPath:false,
            auditoryCortexPath: ger,
            dendriticResponse: [
                
                "slowSpeech": CreatorUserlicell.sonicFrequencyID
            ],
            synapticPotential: { [weak self] response in
                self?.switchBackground.translatesAutoresizingMaskIntoConstraints = false
                self?.handleNeurotransmitterResponse(response, tagint: 1)
            },
            neuralFeedback: { [weak self] error in
                self?.switchBackground.translatesAutoresizingMaskIntoConstraints = false
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
                travelMoon.isHidden = false
                travelTitle.isHidden = false
            }else{
                travelMoon.isHidden = true
                travelTitle.isHidden = true
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
            let DelicateTriggersCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TingleComUserCell", for: indexPath) as! TingleComUserCell
            DelicateTriggersCell.tone = TingleCommunityController.BrushingAids[indexPath.row]
            return DelicateTriggersCell
        }
        let DelicateTriggersCell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecentmeageUserCell", for: indexPath) as! RecentmeageUserCell
        DelicateTriggersCell.tone = SleepAids[indexPath.row]
        DelicateTriggersCell.ceramicSounds.isUserInteractionEnabled = true
        DelicateTriggersCell.ceramicSounds.tag = indexPath.row
        DelicateTriggersCell.ceramicSounds.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(environmental(CanllINto:))))
        return DelicateTriggersCell
        
    }
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switchThumb.layer.cornerRadius = 13
       
        if collectionView == mindfulness {
            if  let peaceful = TingleCommunityController.BrushingAids[indexPath.row].activeDatre["tingling"] as? Int {
                self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.HealingArtistryView, "\(peaceful)")), animated: true)
            }
            switchThumb.layer.shadowRadius = 2
            switchThumb.layer.shadowOpacity = 0.2
            return
        }
        mindfulness.showsHorizontalScrollIndicator = false
        
        if  let peaceful = SleepAids[indexPath.row]["earCleaning"] as? Int {
            switchThumb.layer.shadowRadius = 2
            switchThumb.layer.shadowOpacity = 0.2
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.whisperConnection,  "\(peaceful)")), animated: true)
        }
    }
    
    
    @objc func environmental(CanllINto:UITapGestureRecognizer)  {
        mindfulness.showsHorizontalScrollIndicator = false
        if  let peaceful = SleepAids[CanllINto.view?.tag ?? 0]["earCleaning"] as? Int {
            switchThumb.layer.shadowRadius = 2
            switchThumb.layer.shadowOpacity = 0.2
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.HealingArtistryView, "\(peaceful)" + CoreStreamingController.reconstructBaseLayer(interlacedScan: "&nCzablqltVviideejob=x1"))), animated: true)
       }
    }
}
