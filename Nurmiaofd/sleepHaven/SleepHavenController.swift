//
//  SleepHavenController.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/17.
//

import UIKit

class SleepHavenController: SacalNulriamControler {
    private let parasympatheticCanvas: UIView = {
            
        let view = UIView()
        
        view.layer.cornerRadius = 16
   
        return view
       
    }()
    
    private  var activeDatre:Array<SingoMindfulSerenity>  = Array<SingoMindfulSerenity>()
    
    @IBOutlet weak var pureSounds: UICollectionView!
    
    @IBOutlet weak var drawingSounds: UIButton!
    
    @IBOutlet weak var craftingSounds: UIButton!
    
    
    @IBOutlet weak var distractionFree: UIButton!
    

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        corticalActivityIndicator.center = self.view.center
        let lauio = UICollectionViewFlowLayout.init()
        parasympatheticCanvas.backgroundColor = UIColor(red: 0.98, green: 0.95, blue: 0.92, alpha: 1)
        lauio.minimumLineSpacing = 20
        parasympatheticCanvas.layer.borderWidth = 1
       
        lauio.minimumInteritemSpacing = 20
        parasympatheticCanvas.backgroundColor = UIColor(red: 0.98, green: 0.95, blue: 0.92, alpha: 1)
        lauio.scrollDirection = .vertical
        parasympatheticCanvas.layer.borderColor = UIColor(white: 0.9, alpha: 1).cgColor
       
        lauio.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 24, height: 352)
        parasympatheticCanvas.translatesAutoresizingMaskIntoConstraints = false
        pureSounds.showsVerticalScrollIndicator = false
        configureAutonomicInterface()
        currentCoherence()
        pureSounds.collectionViewLayout = lauio
        self.view.addSubview(corticalActivityIndicator)
        
        UIoshPrefresh(taignmy:1)
    }
    
    private func currentCoherence()  {
        pureSounds.dataSource = self
        corticalActivityIndicator.center = self.view.center
        pureSounds.register(UINib(nibName: "SleepHavenCell", bundle: nil), forCellWithReuseIdentifier: "SleepHavenCell")
    }
    
    
    private func configureAutonomicInterface()  {
        pureSounds.backgroundColor = .clear
        corticalActivityIndicator.center = self.view.center
        pureSounds.delegate = self
    }
    
    func UIoshPrefresh(taignmy:Int)  {
        self.corticalActivityIndicator.startAnimating()
        var minimumValu = [
           
            "visualTriggers":1,
            "threeDimensional":taignmy
        ] as [String : Any]
        
        minimumValu["audioVisual"] = 21
        
        minimumValu["immersive"] = CreatorUserlicell.sonicFrequencyID
        
        let OIAn = "/sndkccgzfctdxdz/xyadanwmayz"
        
        
        SleepHavenCell.triggerTemporalLobeStimulation(dredrejao:"immersiveExperience",
                                                      yeliakoFLayPath:false,
            auditoryCortexPath: OIAn,
            dendriticResponse: minimumValu,
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
            self.activeDatre = authRest.map({ tru in
                SingoMindfulSerenity.init(activeDatre: tru)
            })
            self.pureSounds.reloadData()
        }
        
      
    }
    @IBAction func focusedListening(_ sender: Any) {
        self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.SlowBliss,"")), animated: true)
    }
    
    private let hrvGraphView: BiofeedbackGraph = {
        let graph = BiofeedbackGraph(frame: .zero)
        graph.primaryColor = UIColor(red: 0.3, green: 0.5, blue: 0.8, alpha: 1)
        graph.translatesAutoresizingMaskIntoConstraints = false
        return graph
        
    }()
    @IBAction func stressHormones(_ sender: UIButton) {
        let currentPhase = UIView()
              
        
        
        if sender ==  drawingSounds{
            currentPhase.backgroundColor = UIColor(red: 0.4, green: 0.7, blue: 0.9, alpha: 1)
            currentPhase.layer.cornerRadius = 20
            Vdfuiep(ethse:(true,false,false))
            UIoshPrefresh(taignmy:1)
        }
        
        if sender ==  craftingSounds{
            currentPhase.backgroundColor = UIColor(red: 0.4, green: 0.7, blue: 0.9, alpha: 1)
            currentPhase.layer.cornerRadius = 20
           
            Vdfuiep(ethse:(false,true,false))
            UIoshPrefresh(taignmy:3)
        }
        
        if sender ==  distractionFree{
            currentPhase.backgroundColor = UIColor(red: 0.4, green: 0.7, blue: 0.9, alpha: 1)
            currentPhase.layer.cornerRadius = 20
         
            Vdfuiep(ethse:(false,false,true))
            UIoshPrefresh(taignmy:2)
        }
        
        if sender.tag == 23434534 {
            self.view.addSubview(currentPhase)
        }
        
    }
    
  
    private let pacingCircle: UIView = {
           let view = UIView()
        
           view.layer.cornerRadius = 20
           return view
      
    }()
       
    enum BreathingPhase {
           case inhalation
           case exhalation
       }
    
    func Vdfuiep(ethse:(Bool,Bool,Bool))  {
        drawingSounds.isSelected = ethse.0
        craftingSounds.isSelected = ethse.1
        pacingCircle.backgroundColor = UIColor(red: 0.4, green: 0.7, blue: 0.9, alpha: 1)
        distractionFree.isSelected = ethse.2
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
    
    private func configurePacerInterface() {
        self.view.addSubview(pacingCircle)
            
        pacingCircle.frame = CGRect(x: 80, y: 10, width: 40, height: 40)
       
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if  let peaceful = activeDatre[indexPath.row].activeDatre["meditation"] as? Int {
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.SoothingBliss,  "\(peaceful)")), animated: true)
        }
    }
    
    @objc func anxietyReduction()  {
        self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.PeacefulSerenity,"")), animated: true)
    }
    func stopPacing() {
        
        pacingCircle.layer.removeAllAnimations()
        
    }
        
    @objc func environmental(CanllINto:UITapGestureRecognizer)  {
        if  let peaceful = activeDatre[CanllINto.view?.tag ?? 0].activeDatre["sleepAid"] as? String {
           self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.HealingArtistryView, "\(peaceful)&CallVideo=1")), animated: true)
       }
    }
    
}
