//
//  CustomerRouter.swift
//  QRCodeApp
//
//  Created by cem sezeroglu on 13.04.2022.
//

import Foundation
protocol CustomerRountingLogic {
    func routeToBack()
}

class CustomerRouter: CustomerRountingLogic {
    weak var viewController: CustomerViewController?
    
    func routeToBack() {
        viewController?.navigationController?.popViewController(animated: true)
    }
    
}
