//
//  QRCodeRepository.swift
//  QRCodeApp
//
//  Created by cem sezeroglu on 13.04.2022.
//

import UIKit

struct QRCodeRepository {
    static let sharedInstance = QRCodeRepository()
    
    func generateQRCode() -> UIImage? {
        let string = randomString(length: 20)
        let data = string.data(using: String.Encoding.ascii)
        
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)
            
            if let output = filter.outputImage?.transformed(by: transform) {
                return UIImage(ciImage: output)
            }
        }
        
        return nil
    }
    
    func randomString(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0..<length).map{ _ in letters.randomElement()! })
    }
}
