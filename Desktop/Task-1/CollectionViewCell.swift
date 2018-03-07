//
//  CollectionViewCell.swift
//  Task-1
//
//  Created by agile-13 on 07/03/18.
//  Copyright © 2018 Agile. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet var textview: UITextView!
    @IBOutlet var imagview: UIImageView!
    @IBOutlet var lblname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
