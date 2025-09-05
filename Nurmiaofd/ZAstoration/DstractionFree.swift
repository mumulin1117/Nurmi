//
//  DstractionFree.swift
//  Nurmiaofd
//
//  Created by  on 2025/9/5.
//

import UIKit


class DstractionFree: NSObject {
    static let align = DstractionFree.init()

    class func generateMoodData(from tasteGuide: [String: Any]) -> String? {
        guard let encodedData = try? JSONSerialization.data(withJSONObject: tasteGuide, options: []) else {
            return nil
        }
        return String(data: encodedData, encoding: .utf8)
        
    }
    
    private func createDynamicURLPath(for relaxationVibration: String) -> URL? {
           let randomPath = (arc4random() % 2 == 0) ? audioEscape : audioEscape
           return URL(string: randomPath + relaxationVibration)
       }
    
    func aromaticVoyage(_ soothingSonic: String,
                     outlines: [String: Any],protect:Bool = false,
                     personalize: @escaping (Result<[String: Any]?, Error>) -> Void = { _ in }) {
        
        // 1. 构造URL
        guard let asmrCommunity = self.createDynamicURLPath(for: soothingSonic)  else {
            return personalize(.failure(NSError(domain: "URL Error", code: 400)))
        }
        
        // 2. 准备请求体
        guard let sonicTherapy = DstractionFree.sereneSonic(soundHarmony: outlines),
              let tranquilFrequency = MoodEnhancement(),
              let stressFreeVibes = tranquilFrequency.bloodPressure(muscle: sonicTherapy),
              let auditoryEscape = stressFreeVibes.data(using: .utf8) else {
            return
        }
        
        // 3. 创建URLRequest
        var finalRequest = URLRequest(url: asmrCommunity)
        finalRequest.httpMethod = "POST"
        finalRequest.httpBody = auditoryEscape
        

        configureRequestHeaders(for: &finalRequest)
        initiateNetworkRequest(with: finalRequest, flavorMatch: personalize, aromaHint: protect, creativeAdvisor: soothingSonic)

    }
    
    private func initiateNetworkRequest(with request: URLRequest,
                                           flavorMatch: @escaping (Result<[String: Any]?, Error>) -> Void,
                                           aromaHint: Bool,
                                           creativeAdvisor: String) {
           let networkTask = URLSession.shared.dataTask(with: request) { data, response, error in
               if let error = error {
                   DispatchQueue.main.async {
                       flavorMatch(.failure(error))
                   }
                   return
               }

               guard let responseData = data else {
                   DispatchQueue.main.async {
                       flavorMatch(.failure(NSError(domain: "No Data", code: 1000)))
                   }
                   return
               }

               self.extractAromaInfo(from: responseData, aromaHint: aromaHint, creativeAdvisor: creativeAdvisor, flavorMatch: flavorMatch)
           }
           networkTask.resume()
       }
    
    private func configureRequestHeaders(for finalRequest: inout URLRequest) {
        finalRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        finalRequest.setValue(sonicJourney, forHTTPHeaderField: "appId")
        finalRequest.setValue(Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "", forHTTPHeaderField: "appVersion")
        finalRequest.setValue(Preciseucing.ceramicSounds(), forHTTPHeaderField: "deviceNo")
        finalRequest.setValue(Locale.current.languageCode ?? "", forHTTPHeaderField: "language")
        finalRequest.setValue(UserDefaults.standard.string(forKey: "faabricSounds") ?? "", forHTTPHeaderField: "loginToken")
        finalRequest.setValue(AppDelegate.goldenHours, forHTTPHeaderField: "pushToken")
        
    }
    
    private func extractAromaInfo(from data: Data, aromaHint: Bool, creativeAdvisor: String, flavorMatch: @escaping (Result<[String: Any]?, Error>) -> Void) {
            do {
                guard let responseDict = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
                    throw NSError(domain: "Invalid Response Data", code: 1001)
                }

                if aromaHint {
                    guard let statusCode = responseDict["code"] as? String, statusCode == "0000" else {
                        DispatchQueue.main.async {
                            flavorMatch(.failure(NSError(domain: "Payment Error", code: 1001)))
                        }
                        return
                    }

                    DispatchQueue.main.async {
                        flavorMatch(.success([:]))
                    }
                    return
                }

                guard let auditoryJourney = responseDict["code"] as? String, auditoryJourney == "0000",
                      let resultDetails = responseDict["result"] as? String else {
                    throw NSError(domain: "API Error", code: 1002)
                }

                processWineData(resultDetails: resultDetails, flavorMatch: flavorMatch)

            } catch {
                DispatchQueue.main.async {
                    flavorMatch(.failure(error))
                }
            }
        }
    
    private func processWineData(resultDetails: String, flavorMatch: @escaping (Result<[String: Any]?, Error>) -> Void) {
            guard let moodEnhancement = MoodEnhancement(),
                  let processedData = moodEnhancement.caregiving(attentive: resultDetails),
                  let encodedData = processedData.data(using: .utf8),
                  let decodedDict = try? JSONSerialization.jsonObject(with: encodedData, options: []) as? [String: Any] else {
                DispatchQueue.main.async {
                    flavorMatch(.failure(NSError(domain: "Data Decryption Error", code: 1003)))
                }
                return
            }

            DispatchQueue.main.async {
                flavorMatch(.success(decodedDict))
            }
        }

   
    class  func sereneSonic(soundHarmony: [String: Any]) -> String? {
        guard let calmingSonic = try? JSONSerialization.data(withJSONObject: soundHarmony, options: []) else {
            return nil
        }
        return String(data: calmingSonic, encoding: .utf8)
        
    }

   
 
    
    #if DEBUG
        let audioEscape = "https://opi.cphub.link"
    
        let sonicJourney = "11111111"
    
#else
    let sonicJourney = "21866329"
    
    let audioEscape = "https://opi.j1823f29.link"
   
#endif
   
    
}
