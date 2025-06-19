//
//  SleepHavenController.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/17.
//

import UIKit

class SleepHavenController: UIViewController {

    
    private  var activeDatre:Array<Dictionary<String,Any>>  = Array<Dictionary<String,Any>>()
    
    @IBOutlet weak var pureSounds: UICollectionView!
    
    @IBOutlet weak var drawingSounds: UIButton!
    
    @IBOutlet weak var craftingSounds: UIButton!
    
    
    @IBOutlet weak var distractionFree: UIButton!
    
    private var corticalActivityIndicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView(style: .whiteLarge)
        indicator.hidesWhenStopped = true
        indicator.tintColor = .white
        indicator.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        return indicator
        
    }()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        corticalActivityIndicator.center = self.view.center
        let lauio = UICollectionViewFlowLayout.init()
        lauio.minimumLineSpacing = 20
        lauio.minimumInteritemSpacing = 20
        lauio.scrollDirection = .vertical
        lauio.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 24, height: 352)
        pureSounds.showsVerticalScrollIndicator = false
        pureSounds.backgroundColor = .clear
        pureSounds.delegate = self
        pureSounds.dataSource = self
        pureSounds.register(UINib(nibName: "SleepHavenCell", bundle: nil), forCellWithReuseIdentifier: "SleepHavenCell")
        pureSounds.collectionViewLayout = lauio
        self.view.addSubview(corticalActivityIndicator)
        
        UIoshPrefresh(taignmy:1)
    }
    
    func UIoshPrefresh(taignmy:Int)  {
        self.corticalActivityIndicator.startAnimating()
        //dym
        UIViewController.triggerTemporalLobeStimulation(
            auditoryCortexPath: "/sndkccgzfctdxdz/xyadanwmayz",
            dendriticResponse: [
                "audioVisual":21,
                "visualTriggers":1,
                "threeDimensional":taignmy,
                "immersive": CreatorUserlicell.sonicFrequencyID
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
              let authRest = neuralMap[CoreStreamingController.reconstructBaseLayer(interlacedScan: "dlaxtka")] as? Array<Dictionary<String,Any>>
        else {
            
            return
        }
        if tagint == 1 {
            self.activeDatre = authRest
            self.pureSounds.reloadData()
        }
        
      
    }
    @IBAction func focusedListening(_ sender: Any) {
        self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.createMoment), animated: true)
    }
    

    @IBAction func stressHormones(_ sender: UIButton) {
        
        if sender ==  drawingSounds{
            drawingSounds.isSelected = true
            craftingSounds.isSelected = false
            distractionFree.isSelected = false
            UIoshPrefresh(taignmy:1)
        }
        
        if sender ==  craftingSounds{
            drawingSounds.isSelected = false
            craftingSounds.isSelected = true
            distractionFree.isSelected = false
            UIoshPrefresh(taignmy:3)
        }
        
        if sender ==  distractionFree{
            drawingSounds.isSelected = false
            craftingSounds.isSelected = false
            distractionFree.isSelected = true
            UIoshPrefresh(taignmy:2)
        }
        
        
    }
}


extension SleepHavenController: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        activeDatre.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let KoaiCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SleepHavenCell", for: indexPath) as! SleepHavenCell
        KoaiCell.tone = activeDatre[indexPath.row]
        KoaiCell.fabricSounds.addTarget(self, action: #selector(anxietyReduction), for: .touchUpInside)
        KoaiCell.topoFij.tag = indexPath.row
        KoaiCell.topoFij.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector( environmental(CanllINto:))))
        return KoaiCell
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if  let peaceful = activeDatre[indexPath.row]["meditation"] as? Int {
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.momentDetails, staergia: "\(peaceful)"), animated: true)
        }
    }
    
    @objc func anxietyReduction()  {
        self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.soundFeedback), animated: true)
    }
    
    @objc func environmental(CanllINto:UITapGestureRecognizer)  {
        if  let peaceful = activeDatre[CanllINto.view?.tag ?? 0]["sleepAid"] as? String {
           self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.soundProfileView, staergia: "\(peaceful)&CallVideo=1"), animated: true)
       }
    }
    
}
