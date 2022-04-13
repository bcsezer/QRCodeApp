//
//  CustomerInteractor.swift
//  QRCodeApp
//
//  Created by cem sezeroglu on 13.04.2022.
//

import Foundation
import UIKit

protocol CustomerBusinessLogic {
    func handle(request: CustomerModel.CreateQRCode.Request)
}

class CustomerInteractor: CustomerBusinessLogic {
    var presenter: CustomerPresentationLogic?
    
    func handle(request: CustomerModel.CreateQRCode.Request) {
        let QrCode = QRCodeRepository.sharedInstance.generateQRCode()
        presenter?.present(response: CustomerModel.CreateQRCode.Response(image: QrCode))
    }
}
