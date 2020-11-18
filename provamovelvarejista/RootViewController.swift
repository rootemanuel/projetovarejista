//
//  ViewController.swift
//  provamovelvarejista
//
//  Created by h4x0rs on 17/11/20.
//  Copyright © 2020 h4x0rs. All rights reserved.
//

import UIKit
import SVProgressHUD

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLogin(_ sender: Any) {
        DispatchQueue.global(qos: .userInitiated).async {
            SVProgressHUD.show()
            
            do {
                sleep(UInt32(1.5))
            }
            
            DispatchQueue.main.async {
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "itensTableViewController") as! ItensTableViewController
                
                self.navigationController?.pushViewController(vc, animated: true)
                SVProgressHUD.dismiss()
            }
        }
    }
    
}

