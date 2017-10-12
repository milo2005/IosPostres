//
//  PostreTableViewCell.swift
//  Postres
//
//  Created by Aplimovil on 11/10/17.
//  Copyright © 2017 Aplimovil. All rights reserved.
//

import UIKit

class PostreTableViewCell: UITableViewCell {

    @IBOutlet var img:UIImageView!
    @IBOutlet var title:UILabel!
    @IBOutlet var price:UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
