//
//  GeneratorQRViewController.swift
//  QRTest
//
//  Created by Vicente Cantu Garcia on 10/17/18.
//  Copyright © 2018 Vicente Cantu Garcia. All rights reserved.
//

import UIKit
import QRCodeGenerator

class GeneratorQRViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var qrCodeView: QRCodeView!
    @IBOutlet weak var partName: UITextField!
    @IBOutlet weak var numberPart: UITextField!
    @IBOutlet weak var quantity: UITextField!
    @IBOutlet weak var providerName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        qrCodeView.errorCorrectionLevel = .M
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
    
    @IBAction func onTap(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    @IBAction func generate(_ sender: Any) {
        let text = "\(providerName.text!)|\(partName.text!)|\(numberPart.text!)|\(quantity.text!)"
        qrCodeView.isHidden = false
        qrCodeView.text = text
        
    }
    
}
