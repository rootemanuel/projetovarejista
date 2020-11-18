//
//  CheckoutViewController.swift
//  provamovelvarejista
//
//  Created by h4x0rs on 17/11/20.
//  Copyright © 2020 h4x0rs. All rights reserved.
//

import UIKit
import SVProgressHUD

class CheckoutViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnAgendar(_ sender: Any) {
        
        DispatchQueue.global(qos: .userInitiated).async {
            SVProgressHUD.show()
            
            do {
                sleep(UInt32(1.5))
            }
            
            DispatchQueue.main.async {
                
                let alertController = UIAlertController(title: "👚👡 Agendamento 👗👠", message: "Agendamento realizado com sucesso", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "❤️", style: .default, handler: nil))
                self.present(alertController, animated: true, completion: nil)
                
                SVProgressHUD.dismiss()
            }
        }
        
    }
}
