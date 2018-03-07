//
//  TableViewCell.swift
//  Task-1
//
//  Created by agile-13 on 07/03/18.
//  Copyright © 2018 Agile. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet var name: UILabel!
   
    @IBOutlet var descTv: UITextView!
    @IBOutlet var imagV: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
