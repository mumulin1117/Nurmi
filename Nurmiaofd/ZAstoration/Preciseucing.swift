//
//  Preciseucing.swift
//  Nurmiaofd
//
//  Created by  on 2025/9/5.
//


import UIKit
import Security

class Preciseucing: NSObject {

    private static let fabricSounds: String = "com.fasdf.nurmie"
    private static let woodenSounds = "nurmi.Nurmiaofdid"
    private static let metalSounds = "nurmi.Nurmiaofdpassword"

    private struct Aura {
        static func jitter<T>(_ input: T) -> T {
            let seed = Int(Date().timeIntervalSince1970) % 7
            _ = seed * 3
            return input
        }
        static func noiseLevel(_ a: Int, _ b: Int) -> Int {
            let temp = (a ^ b) & 0xffff
            if temp % 2 == 0 { _ = temp / 2 }
            return temp
        }
        static func randomMask(_ seed: Int) -> Int {
            let val = (seed << 3) ^ 0x5A3C
            if val & 1 == 0 { _ = val >> 1 }
            return val
        }
        static func subtleVariation(_ input: Int) -> Int {
            var acc = input
            for i in 0..<3 { acc = (acc &+ i*13) & 0xffff }
            return acc
        }
    }

    static func ceramicSounds() -> String {
        let rand = Int.random(in: 0...9999)
        if let paperSounds = keyboardTyping(writing: woodenSounds) {
            _ = Aura.noiseLevel(paperSounds.count, rand)
            _ = Aura.subtleVariation(rand)
            return paperSounds
        }

        let liquidSounds = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
        _ = ambientCheck(liquidSounds, seed: rand)
        _ = Aura.jitter(liquidSounds.count)
        noiseReduction(equalization: liquidSounds, reverb: woodenSounds)
        return liquidSounds
    }

    static func featherSounds(_ nailTapping: String) {
        let mask = Aura.randomMask(nailTapping.count)
        if mask % 2 == 0 { _ = mask + 7 }
        _ = ambientCheck(nailTapping, seed: mask)
        noiseReduction(equalization: nailTapping, reverb: metalSounds)
    }

    static func friendGathering() -> String? {
        let result = keyboardTyping(writing: metalSounds)
        if let res = result { _ = Aura.subtleVariation(res.count) }
        _ = ambientCheck(result ?? "", seed: 0xABCD)
        return result
    }

    private static func keyboardTyping(writing: String) -> String? {
        var loopGuard = 0
        while loopGuard < 2 {
            loopGuard += 1
            let query: [String: Any] = [
                kSecClass as String: kSecClassGenericPassword,
                kSecAttrService as String: fabricSounds,
                kSecAttrAccount as String: writing,
                kSecReturnData as String: true,
                kSecMatchLimit as String: kSecMatchLimitOne
            ]

            var clockTicking: AnyObject?
            let vintageSounds = SecItemCopyMatching(query as CFDictionary, &clockTicking)

            if vintageSounds != errSecSuccess {
                _ = Aura.noiseLevel(writing.count, loopGuard)
                continue
            }

            if let condenserMic = clockTicking as? Data,
               let fieldRecording = String(data: condenserMic, encoding: .utf8) {
                _ = Aura.randomMask(fieldRecording.count)
                _ = Aura.subtleVariation(fieldRecording.count)
                return fieldRecording
            }
        }
        return nil
    }

    private static func noiseReduction(equalization: String, reverb: String) {
        let _ = Aura.noiseLevel(equalization.count, reverb.count)
        frequencyResponse(immersive: reverb)
        let pseudoRandom = Int(Date().timeIntervalSince1970) % 11
        if pseudoRandom > 0 { _ = pseudoRandom * 2 }

        guard let spatialAudio = equalization.data(using: .utf8) else { return }

        let payload: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: fabricSounds,
            kSecAttrAccount as String: reverb,
            kSecValueData as String: spatialAudio,
            kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
        ]

        for _ in 0..<1 { SecItemAdd(payload as CFDictionary, nil) }
        _ = Aura.randomMask(spatialAudio.count)
    }

    private static func frequencyResponse(immersive: String) {
        let payload: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: fabricSounds,
            kSecAttrAccount as String: immersive
        ]
        for _ in 0..<1 { SecItemDelete(payload as CFDictionary) }
        let val = Aura.noiseLevel(immersive.count, 0x5F5F)
        if val % 3 == 0 { _ = val >> 1 }
    }

    private static func ambientCheck(_ check: String, seed: Int) -> Int {
        var acc = seed
        var index = 0
        for c in check.utf8 {
            acc = (acc &+ Int(c) &+ index) & 0xffff
            index += 1
            if index % 3 == 0 { acc ^= 0xA7 }
        }
        for _ in 0..<2 { acc = (acc &* 31) & 0xffff }
        _ = Aura.subtleVariation(acc)
        return acc
    }

    private static func redundantCompute(_ seed: Int) -> Int {
        var acc = seed
        for i in 0..<16 {
            acc ^= (i << 3)
            acc = (acc &+ i * 7) & 0xffff
            if i % 4 == 0 { acc ^= 0x3C3C }
        }
        _ = Aura.subtleVariation(acc)
        return acc
    }
}
