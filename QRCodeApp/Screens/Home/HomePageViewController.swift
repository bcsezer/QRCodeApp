//
//  HomePageViewController.swift
//  QRCodeApp
//
//  Created by cem sezeroglu on 12.04.2022.
//

import UIKit

class HomePageViewController: UIViewController {
    var router: HomePageRoutingLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tapCashier(_ sender: UIButton) {
        router?.routeToCashier()
    }
    
    @IBAction func tapCustomer(_ sender: UIButton) {
        router?.routeToCustomer()
    }
}
