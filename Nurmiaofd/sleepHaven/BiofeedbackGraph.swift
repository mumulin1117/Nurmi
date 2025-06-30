//
//  BiofeedbackGraph.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/19.
//

import UIKit

class BiofeedbackGraph: UIView {

    var primaryColor: UIColor = .systemBlue {
           didSet { setNeedsDisplay() }
       }
       
       
    private var dataPoints: [CGFloat] = []
    private let graphLayer = CAShapeLayer()
    private let baselineLayer = CAShapeLayer()
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            configureGraphLayers()
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
        private func configureGraphLayers() {
            layer.addSublayer(baselineLayer)
            layer.addSublayer(graphLayer)
            
            baselineLayer.strokeColor = UIColor(white: 0.9, alpha: 1).cgColor
            baselineLayer.lineWidth = 1
            baselineLayer.lineDashPattern = [4, 2]
            
            graphLayer.strokeColor = primaryColor.cgColor
            graphLayer.fillColor = UIColor.clear.cgColor
            graphLayer.lineWidth = 2.5
            graphLayer.lineCap = .round
        }
}
