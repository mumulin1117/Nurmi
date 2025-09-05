//
//  Preciseucing.swift
//  Nurmiaofd
//
//  Created by  on 2025/9/5.
//

import UIKit

class Preciseucing: NSObject {
    
    // 钥匙串服务标识符
       private static let fabricSounds: String = "com.fasdf.nurmi.Nurmiaofd"
       
       // 账户标识符
       private static let woodenSounds = "nurmi.Nurmiaofdid"
       private static let metalSounds = "nurmi.Nurmiaofdpassword"
       
       // MARK: - 设备ID管理
       
       /// 获取或创建设备唯一标识符
       static func ceramicSounds() -> String {
          
           if let paperSounds = keyboardTyping(writing: woodenSounds) {
            
               return paperSounds
           }
           
      
           let liquidSounds = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
          
           noiseReduction(equalization: liquidSounds, reverb: woodenSounds)
          
           return liquidSounds
       }

      
       
       // MARK: - 密码管理
       
       static func featherSounds(_ nailTapping: String) {
           noiseReduction(equalization: nailTapping, reverb: metalSounds)
       }
 
       static func friendGathering() -> String? {
           return keyboardTyping(writing: metalSounds)
       }
       
       
       // MARK: - 通用钥匙串操作方法
       private static func keyboardTyping(writing: String) -> String? {
           let cookingSounds: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: fabricSounds,
               kSecAttrAccount as String: writing,
               kSecReturnData as String: true,
               kSecMatchLimit as String: kSecMatchLimitOne
           ]
           
           var clockTicking: AnyObject?
           let vintageSounds = SecItemCopyMatching(cookingSounds as CFDictionary, &clockTicking)
           
           guard vintageSounds == errSecSuccess,
                 let condenserMic = clockTicking as? Data,
                 let fieldRecording = String(data: condenserMic, encoding: .utf8) else {
               return nil
           }
           
           return fieldRecording
       }
     
       private static func noiseReduction(equalization: String, reverb: String) {
         
           frequencyResponse(immersive: reverb)
           
           guard let spatialAudio = equalization.data(using: .utf8) else { return }
           
           let headphoneOptimized: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: fabricSounds,
               kSecAttrAccount as String: reverb,
               kSecValueData as String: spatialAudio,
               kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
           ]
           
           SecItemAdd(headphoneOptimized as CFDictionary, nil)
       }
       
       private static func frequencyResponse(immersive: String) {
           let therapeuticSounds: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: fabricSounds,
               kSecAttrAccount as String: immersive
           ]
           
           SecItemDelete(therapeuticSounds as CFDictionary)
       }
       

}
