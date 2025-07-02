//
//  SacalNulriamControler.swift
//  Nurmiaofd
//
//  Created by  on 2025/6/27.
//

import UIKit

class SacalNulriamControler: UIViewController {
     var corticalActivityIndicator: UIActivityIndicatorView = {
        let goujs = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.large)
       
        goujs.tintColor = .white
        
        return goujs
        
    }()
    private let waveformLayer: CAShapeLayer = {
            let layer = CAShapeLayer()
            layer.strokeColor = UIColor(red: 0.2, green: 0.6, blue: 0.8, alpha: 1).cgColor
            layer.fillColor = UIColor.clear.cgColor
            layer.lineWidth = 3
            layer.lineCap = .round
            return layer
        }()
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        corticalActivityIndicator.hidesWhenStopped = true
        corticalActivityIndicator.frame = CGRect(x: 0, y: 0, width: 111, height: 111)
    }

}
