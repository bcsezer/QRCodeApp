//
//  CustomerViewController.swift
//  QRCodeApp
//
//  Created by cem sezeroglu on 12.04.2022.
//

import UIKit

protocol CustomerViewDisplayLogic {
    func display(viewModel: CustomerModel.CreateQRCode.ViewModel)
}

class CustomerViewController: UIViewController, CustomerViewDisplayLogic {
    var interactor: CustomerBusinessLogic?
    var router: CustomerRountingLogic?
    
    @IBOutlet weak var QRImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        interactor?.handle(request: CustomerModel.CreateQRCode.Request())
    }

    func display(viewModel: CustomerModel.CreateQRCode.ViewModel) {
        self.QRImage.image = viewModel.image
    }
    
    @IBAction func tapBack(_ sender: Any) {
        router?.routeToBack()
    }
}
