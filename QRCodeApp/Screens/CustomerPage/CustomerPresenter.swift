//
//  CustomerPresenter.swift
//  QRCodeApp
//
//  Created by cem sezeroglu on 13.04.2022.
//

import Foundation

protocol CustomerPresentationLogic {
    func present(response: CustomerModel.CreateQRCode.Response)
}

class CustomerPresenter: CustomerPresentationLogic {
    var viewcontroller: CustomerViewDisplayLogic?
    
    func present(response: CustomerModel.CreateQRCode.Response) {
        guard let qrCode = response.image else {
            return
        }
        
        viewcontroller?.display(viewModel: CustomerModel.CreateQRCode.ViewModel(image: qrCode))
    }
}
