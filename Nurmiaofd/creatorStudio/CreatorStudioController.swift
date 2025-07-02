//
//  CreatorStudioController.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/17.
//

import UIKit

class CreatorStudioController: SacalNulriamControler,UITableViewDelegate,UITableViewDataSource, CreatorStudioPopViewDelegate {
    func didichangeglaio(trpe: Int, ajsiu: Dictionary<String, Any>) {
        if trpe == 1 {
            let centering = ajsiu["centering"] as? Int
            if centering == -1 {
                if  let peaceful = ajsiu["peaceful"] as? Int ,
                    let tranquil = ajsiu["tranquil"] as? Int
                {
                    
                    let guli = (UIViewController.SoundNavigationPath.soundWaveViewer,  "\(peaceful)" + CoreStreamingController.reconstructBaseLayer(interlacedScan: "&nulstekrvIods=") + "\(tranquil)")
                    
                    self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro:guli ), animated: true)
                }
                
                
            }else{
                if  let peaceful = ajsiu["peaceful"] as? Int {
                    self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.soundSpaceLounge,  "\(peaceful)")), animated: true)
                }
                
            }
            
            return
        }else if   trpe == 2{
           if let tranquil = ajsiu["tingling"] as? Int
           {
               self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.HealingArtistryView,  "\(tranquil)")), animated: true)
           }
        }else if   trpe == 3{
            self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.PeacefulSerenity,"")), animated: true)
        }
        
    }
    
    private  var activeDatre:Array<SingoMindfulSerenity>  = Array<SingoMindfulSerenity>()
    
    @IBOutlet weak var scratchingView: UITableView!
    
    @IBOutlet weak var earToEar: UIButton!
   
    let relaxationStation:CreatorStudioPopView = UINib(nibName: "CreatorStudioPopView", bundle: nil).instantiate(withOwner: nil, options: nil).first as! CreatorStudioPopView
    
    
    func GentlePouring() {
        scratchingView.delegate = self
        scratchingView.dataSource = self
    }
    
    func PeacefulArtistry()  {
        scratchingView.showsVerticalScrollIndicator = false
        scratchingView.register(UINib.init(nibName: "CreatorStudioActiveCell", bundle: nil), forCellReuseIdentifier: "CreatorStudioActiveCell")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        corticalActivityIndicator.center = self.view.center
        self.relaxationStation.upafire()
        relaxationStation.oklopp = self
        relaxationStation.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 410)
        GentlePouring()
       
        scratchingView.rowHeight = 175 + 22
        PeacefulArtistry()
        self.view.addSubview(corticalActivityIndicator)
        
        self.corticalActivityIndicator.startAnimating()
        
        
        
        let minimumValu = ["/rnlqwz/ebcehacb","/nzqmfz/mytskzlnbjmprz","/qumufmz/hsxfftqwvzyirbxb"
            ]
        SleepHavenCell.triggerTemporalLobeStimulation(dredrejao:"immersiveExperience",
                                                      yeliakoFLayPath:false,
            auditoryCortexPath: minimumValu[0],
            dendriticResponse: [
                
                "predictable": CreatorUserlicell.sonicFrequencyID
            ],
            synapticPotential: { [weak self] response in
                
                self?.handleNeurotransmitterResponse(response, tagint: 1)
            },
            neuralFeedback: { [weak self] error in
                self?.corticalActivityIndicator.stopAnimating()
            }
        )
      
        SleepHavenCell.triggerTemporalLobeStimulation(dredrejao:"immersiveExperience",
                                                      yeliakoFLayPath:false,
            auditoryCortexPath: minimumValu[1],
            dendriticResponse: [
                "whispering": CreatorUserlicell.sonicFrequencyID
            ],
            synapticPotential: { [weak self] response in
                
                self?.handleNeurotransmitterResponse(response, tagint: 3)
            }
        )
    
        SleepHavenCell.triggerTemporalLobeStimulation(dredrejao:"immersiveExperience",
                                                      yeliakoFLayPath:false,
            auditoryCortexPath: minimumValu[2],
            dendriticResponse: [
                "decompression":9,
                "sleepInducing":1,
                "unwinding": CreatorUserlicell.sonicFrequencyID
            ],
            synapticPotential: { [weak self] response in
                
                self?.handleNeurotransmitterResponse(response, tagint: 2)
            }
        )
    }
    

    @IBAction func crinkling(_ sender: UIButton) {
      
        self.navigationController?.pushViewController(FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.soundSpaceCreation,"")), animated: true)
       
    }
    
    private func handleNeurotransmitterResponse(_ corticalData: Any?,tagint:Int) {
        corticalActivityIndicator.stopAnimating()
        
        
        guard let neuralMap = corticalData as? [String: Any],
              let authRest = neuralMap[CoreStreamingController.reconstructBaseLayer(interlacedScan: "dnattca")] as? Array<Dictionary<String,Any>>
        else {
            
            return
        }
        if tagint == 1 {
            self.activeDatre = authRest.map({ rejfi in
                SingoMindfulSerenity.init(activeDatre: rejfi)
            })
            self.scratchingView.reloadData()
        }
        
        if tagint == 2 {
            self.relaxationStation.SleepAids = authRest.map({ join in
                SingoMindfulSerenity.init(activeDatre: join)
            })
            self.relaxationStation.immersive.reloadData()
        }
        
        if tagint == 3 {
            TingleCommunityController.BrushingAids = authRest.map({ join in
                SingoMindfulSerenity.init(activeDatre: join)
            })
            self.relaxationStation.BrushingAids = authRest.map({ join in
                SingoMindfulSerenity.init(activeDatre: join)
            })
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
        if let actIOi = activeDatre[indexPath.row].activeDatre["precise"] as? Int {
            let acritosllll = FoleygoptimController.init(arpeggiatorPro: (UIViewController.SoundNavigationPath.CalmParadise,"\(actIOi)"))
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
    func setLocalSloalyHandImage(for url:String) {
        if let urls = URL(string: url) {
            URLSession.shared.dataTask(with: urls) { data, response, error in
                if let data = data, let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        if url.contains("b8fdc83789254be48d57a7e30c6a9d07312") {
                            self.image  =  self.cropImage(image, leftMargin: 30, rightMargin: 30)
                            
                        }else{
                            self.image  =  image
                        }
                         
                    }
                }
            }.resume()
        }
    }
    
    func cropImage(_ image: UIImage, leftMargin: CGFloat, rightMargin: CGFloat) -> UIImage? {
        let cropRect = CGRect(
            x: leftMargin * image.scale,
            y: 0,
            width: (image.size.width - leftMargin - rightMargin) * image.scale,
            height: image.size.height * image.scale
        )
        
        UIGraphicsBeginImageContextWithOptions(
            CGSize(width: cropRect.width, height: cropRect.height),
            false,
            image.scale
        )
        
        image.draw(at: CGPoint(x: -cropRect.origin.x, y: -cropRect.origin.y))
        let croppedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return croppedImage
    }
}
