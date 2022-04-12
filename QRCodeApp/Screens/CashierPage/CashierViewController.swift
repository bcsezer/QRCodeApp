//
//  CashierViewController.swift
//  QRCodeApp
//
//  Created by cem sezeroglu on 12.04.2022.
//

import UIKit

class CashierViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
