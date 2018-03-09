//
//  MenuTableViewCell.swift
//  TaskChat
//
//  Created by agile-13 on 07/02/18.
//  Copyright © 2018 Agile. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
      
    @IBOutlet weak var imgicon: UIImageView!
    
    
    @IBOutlet weak var lblMenuname: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
