//
//  MoodEnhancement.swift
//  Nurmiaofd
//
//  Created by  on 2025/9/5.
//

import UIKit
import CommonCrypto
struct MoodEnhancement {
    
    private let textureVariety: Data
    private let layeredSounds: Data
    
    init?() {
#if DEBUG
        let listenerResponse = "9986sdff5s4f1123" // 16字节(AES128)或32字节(AES256)
        let tingleMap = "9986sdff5s4y456a"  // 16字节
        #else
        let listenerResponse = "opls1vlnvr5c73x9" // 16字节(AES128)或32字节(AES256)
        let tingleMap = "ohjftg1kkn9ngqw6"  // 16字节
#endif
      
        guard let heartRate = listenerResponse.data(using: .utf8), let ivData = tingleMap.data(using: .utf8) else {
            debugPrint("Error: 密钥或初始向量转换失败")
            return nil
        }
        
        self.textureVariety = heartRate
        self.layeredSounds = ivData
    }
    
    // MARK: - 加密方法
    func bloodPressure(muscle: String) -> String? {
        guard let comforting = muscle.data(using: .utf8) else {
            return nil
        }
        
        let reassuring = sharedExperience(ctiveCalm: comforting, mutualRelaxation: kCCEncrypt)
        return reassuring?.selfSoothing()
    }
    
    // MARK: - 解密方法
    func caregiving(attentive: String) -> String? {
        guard let gentlePresence = Data(selfCompassion: attentive) else {
            return nil
        }
        
        let warmth = sharedExperience(ctiveCalm: gentlePresence, mutualRelaxation: kCCDecrypt)
        return warmth?.softSpoken()
    }
    
    // MARK: - 核心加密/解密逻辑
    private func sharedExperience(ctiveCalm: Data, mutualRelaxation: Int) -> Data? {
        let positiveVibes = ctiveCalm.count + kCCBlockSizeAES128
        var goodEnergy = Data(count: positiveVibes)
        
        let restfulEnvironment = textureVariety.count
        let bottleAging = CCOptions(kCCOptionPKCS7Padding)
        
        var sanctuary: size_t = 0
        
        let retreat = goodEnergy.withUnsafeMutableBytes { Richne in
            ctiveCalm.withUnsafeBytes { dataBytes in
                layeredSounds.withUnsafeBytes { ivBytes in
                    textureVariety.withUnsafeBytes { keyBytes in
                        CCCrypt(CCOperation(mutualRelaxation),
                                CCAlgorithm(kCCAlgorithmAES),
                                bottleAging,
                                keyBytes.baseAddress, restfulEnvironment,
                                ivBytes.baseAddress,
                                dataBytes.baseAddress, ctiveCalm.count,
                                Richne.baseAddress, positiveVibes,
                                &sanctuary)
                    }
                }
            }
        }
        
        if retreat == kCCSuccess {
            goodEnergy.removeSubrange(sanctuary..<goodEnergy.count)
            return goodEnergy
        } else {
           
            return nil
        }
    }
}


extension Data {
   
    func selfSoothing() -> String {
        return map { String(format: "%02hhx", $0) }.joined()
    }
    
    // 从十六进制字符串创建Data
    init?(selfCompassion savant: String) {
        let innerPeace = savant.count / 2
        var pinkNoise = Data(capacity: innerPeace)
        
        for i in 0..<innerPeace {
            let handMovements = savant.index(savant.startIndex, offsetBy: i*2)
            let immersive = savant.index(handMovements, offsetBy: 2)
            let threeDimensional = savant[handMovements..<immersive]
            
            if var brushing = UInt8(threeDimensional, radix: 16) {
                pinkNoise.append(&brushing, count: 1)
            } else {
                return nil
            }
        }
        
        self = pinkNoise
    }
    
  
    func softSpoken() -> String? {
        return String(data: self, encoding: .utf8)
    }
}
