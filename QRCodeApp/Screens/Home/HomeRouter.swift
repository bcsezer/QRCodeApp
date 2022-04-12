//
//  HomeRouter.swift
//  QRCodeApp
//
//  Created by cem sezeroglu on 12.04.2022.
//

import UIKit

protocol HomePageRoutingLogic {
    func routeToCustomer()
    func routeToCashier()
}

class HomeRouter: NSObject, HomePageRoutingLogic {
    weak var viewController: HomePageViewController?

    // MARK: Routing Logic

    func routeToCustomer() {
        let customerVC = ViewControllerFactory.sharedInstance.makeCustomerPage()
        viewController?.navigationController?.pushViewController(customerVC, animated: true)
    }
    
    func routeToCashier() {
        let cashierVC = ViewControllerFactory.sharedInstance.makeCashierPage()
        viewController?.navigationController?.pushViewController(cashierVC, animated: true)
    }
}
