//
//  CustomerModel.swift
//  QRCodeApp
//
//  Created by cem sezeroglu on 13.04.2022.
//

import UIKit

enum CustomerModel {
    
    enum CreateQRCode {
        struct Request {
        }
        struct Response {
            let image: UIImage?
        }
        struct ViewModel {
            let image: UIImage
        }
    }
}
