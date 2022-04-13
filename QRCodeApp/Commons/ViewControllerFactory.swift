//
//  ViewControllerFactory.swift
//  QRCodeApp
//
//  Created by cem sezeroglu on 12.04.2022.
//

import Foundation

import UIKit

protocol ViewControllerFactoryProtocol {
    func makeHomePage() -> UIViewController
    func makeCustomerPage() -> UIViewController
    func makeCashierPage() -> UIViewController
}

struct ViewControllerFactory: ViewControllerFactoryProtocol {
    static let sharedInstance = ViewControllerFactory()
    
    func makeHomePage() -> UIViewController {
        let viewController = HomePageViewController(nibName: "HomePageViewController", bundle: nil)
        let router = HomeRouter()
        router.viewController = viewController
        viewController.router = router
        return viewController
    }
    
    func makeCustomerPage() -> UIViewController {
        let viewController = CustomerViewController(nibName: "CustomerViewController", bundle: nil)
        let interactor = CustomerInteractor()
        let presenter = CustomerPresenter()
        let router = CustomerRouter()
        interactor.presenter = presenter
        presenter.viewcontroller = viewController
        viewController.interactor = interactor
        viewController.router = router
        router.viewController = viewController
        return viewController
    }
    
    func makeCashierPage() -> UIViewController {
        let viewController = CashierViewController(nibName: "CashierViewController", bundle: nil)
        return viewController
    }
}
