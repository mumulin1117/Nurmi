//
//  CreatorStudioController.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/17.
//

import UIKit

class CreatorStudioController: UIViewController,UITableViewDelegate,UITableViewDataSource, CreatorStudioPopViewDelegate {
    func didichangeglaio(trpe: Int, ajsiu: Dictionary<String, Any>) {
        if trpe == 1 {
            let centering = ajsiu["centering"] as? Int
            if centering == -1 {
                if  let peaceful = ajsiu["peaceful"] as? Int ,
                    let tranquil = ajsiu["tranquil"] as? Int //userid
                {
                    self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.soundWaveViewer, staergia: "\(peaceful)&userId=\(tranquil)"), animated: true)
                }
                
                
            }else{
                if  let peaceful = ajsiu["peaceful"] as? Int {
                    self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.soundSpaceLounge, staergia: "\(peaceful)"), animated: true)
                }
                
            }
            
            return
        }else if   trpe == 2{
           if let tranquil = ajsiu["tingling"] as? Int //userid
           {
               self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.soundProfileView, staergia: "\(tranquil)"), animated: true)
           }
        }else if   trpe == 3{
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.soundFeedback), animated: true)
        }
        
    }
    
    private  var activeDatre:Array<Dictionary<String,Any>>  = Array<Dictionary<String,Any>>()
    
    @IBOutlet weak var scratchingView: UITableView!
    
    @IBOutlet weak var earToEar: UIButton!
    private var corticalActivityIndicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView(style: .whiteLarge)
        indicator.hidesWhenStopped = true
        indicator.tintColor = .white
        indicator.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        return indicator
        
    }()
    let relaxationStation:CreatorStudioPopView = UINib(nibName: "CreatorStudioPopView", bundle: nil).instantiate(withOwner: nil, options: nil).first as! CreatorStudioPopView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        corticalActivityIndicator.center = self.view.center
        self.relaxationStation.upafire()
        relaxationStation.oklopp = self
        relaxationStation.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 410)
        
        scratchingView.delegate = self
        scratchingView.dataSource = self
        scratchingView.rowHeight = 175 + 22
        scratchingView.showsVerticalScrollIndicator = false
        scratchingView.register(UINib.init(nibName: "CreatorStudioActiveCell", bundle: nil), forCellReuseIdentifier: "CreatorStudioActiveCell")
        self.view.addSubview(corticalActivityIndicator)
        
        self.corticalActivityIndicator.startAnimating()
        //active
        UIViewController.triggerTemporalLobeStimulation(
            auditoryCortexPath: "/rnlqwz/ebcehacb",
            dendriticResponse: [
                
                "predictable": UIViewController.sonicFrequencyID
            ],
            synapticPotential: { [weak self] response in
                
                self?.handleNeurotransmitterResponse(response, tagint: 1)
            },
            neuralFeedback: { [weak self] error in
                self?.corticalActivityIndicator.stopAnimating()
            }
        )
        
        //user list
        UIViewController.triggerTemporalLobeStimulation(
            auditoryCortexPath: "/nzqmfz/mytskzlnbjmprz",
            dendriticResponse: [
                "whispering": UIViewController.sonicFrequencyID
            ],
            synapticPotential: { [weak self] response in
                
                self?.handleNeurotransmitterResponse(response, tagint: 3)
            },
            neuralFeedback: { [weak self] error in
                
            }
        )
        //live
        
        
     
        UIViewController.triggerTemporalLobeStimulation(
            auditoryCortexPath: "/qumufmz/hsxfftqwvzyirbxb",
            dendriticResponse: [
                "decompression":9,
                "sleepInducing":1,
                "unwinding": UIViewController.sonicFrequencyID
            ],
            synapticPotential: { [weak self] response in
                
                self?.handleNeurotransmitterResponse(response, tagint: 2)
            },
            neuralFeedback: { [weak self] error in
                
            }
        )
    }
    

    @IBAction func crinkling(_ sender: UIButton) {
      
        self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.soundSpaceCreation), animated: true)
       
    }
    
    private func handleNeurotransmitterResponse(_ corticalData: Any?,tagint:Int) {
        corticalActivityIndicator.stopAnimating()
        
        
        guard let neuralMap = corticalData as? [String: Any],
              let authRest = neuralMap["data"] as? Array<Dictionary<String,Any>>
        else {
            
            return
        }
        if tagint == 1 {
            self.activeDatre = authRest
            self.scratchingView.reloadData()
        }
        
        if tagint == 2 {
            self.relaxationStation.SleepAids = authRest
            self.relaxationStation.immersive.reloadData()
        }
        
        if tagint == 3 {
            TingleCommunityController.BrushingAids = authRest
            self.relaxationStation.BrushingAids = authRest
            self.relaxationStation.micBrushing.reloadData()
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        activeDatre.count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let groundingCell = tableView.dequeueReusableCell(withIdentifier: "CreatorStudioActiveCell", for: indexPath) as! CreatorStudioActiveCell
        
        
        groundingCell.tone = activeDatre[indexPath.row]
        groundingCell.selectionStyle = .none
        
        return groundingCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let actIOi = activeDatre[indexPath.row]["precise"] as? Int {
            let acritosllll = FoleygoptimController.init(arpeggiatorPro: UIViewController.SoundNavigationPath.soundEventDetails, staergia: "\(actIOi)")
            self.navigationController?.pushViewController(acritosllll, animated: true)
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        self.relaxationStation
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 410
    }
    private func therapeuticSounds() {
        
    }
}


extension UIImageView{
    func setLocalImage(for url:String) {
        if let url = URL(string: url) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data, let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self.image = image
                    }
                }
            }.resume()
        }
    }
}
