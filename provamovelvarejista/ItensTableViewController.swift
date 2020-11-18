//
//  ItensTableViewController.swift
//  provamovelvarejista
//
//  Created by h4x0rs on 17/11/20.
//  Copyright © 2020 h4x0rs. All rights reserved.
//

import UIKit
import SVProgressHUD

class ItensTableViewController: UITableViewController {
    
    let arrTitulo = [
        "Look 1",
        "Look 2",
        "Look 3",
        "Look 4",
        "Look 5",
        "Look 6",
        "Look 7",
        "Look 8",
        "Look 9",
        "Look 10",
    ]

    let arrDescricao = [
        "Look 1",
        "Look 2",
        "Look 3",
        "Look 4",
        "Look 5",
        "Look 6",
        "Look 7",
        "Look 8",
        "Look 9",
        "Look 10",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initView()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTitulo.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = Bundle.main.loadNibNamed("ItensTableViewCell", owner: self, options: nil)?.first as! ItensTableViewCell
        
        cell.txtTitulo.text = arrTitulo[indexPath.row]
        cell.txtDescricao.text = arrDescricao[indexPath.row]
        
        cell.imgFoto.image = UIImage(named:"roupa\(indexPath.row + 1)")
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func initView(){
        let attnav = [
            NSAttributedString.Key.foregroundColor: UIColor.black,
            NSAttributedString.Key.font: UIFont(name: "Didot", size: 25)!
        ]
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Checkout", style: .plain, target: self, action: #selector(checkoutItens(sender:)))
        
        self.navigationController?.navigationBar.barTintColor =  UIColor.init(red: 251, green: 214, blue: 203, alpha: 1)
        self.navigationController?.navigationBar.titleTextAttributes = attnav
        self.title = "Itens"
    }
    
    @objc func checkoutItens(sender: UIBarButtonItem) {
        DispatchQueue.global(qos: .userInitiated).async {
            SVProgressHUD.show()
            
            do {
                sleep(UInt32(1.5))
            }
            
            DispatchQueue.main.async {
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "checkoutViewController") as! CheckoutViewController
                
                self.navigationController?.pushViewController(vc, animated: true)
                SVProgressHUD.dismiss()
            }
        }
    }
}
