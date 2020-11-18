//
//  ItensTableViewCell.swift
//  provamovelvarejista
//
//  Created by h4x0rs on 17/11/20.
//  Copyright © 2020 h4x0rs. All rights reserved.
//

import UIKit

class ItensTableViewCell: UITableViewCell {

    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var txtTitulo: UILabel!
    @IBOutlet weak var txtDescricao: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imgFoto.layer.borderWidth = 1
        imgFoto.layer.masksToBounds = false
        imgFoto.layer.borderColor = UIColor.black.cgColor
        imgFoto.layer.cornerRadius = 5
        imgFoto.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
