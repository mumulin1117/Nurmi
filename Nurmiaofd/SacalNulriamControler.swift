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
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        corticalActivityIndicator.hidesWhenStopped = true
        corticalActivityIndicator.frame = CGRect(x: 0, y: 0, width: 111, height: 111)
    }

}
