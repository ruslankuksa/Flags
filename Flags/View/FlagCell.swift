//
//  FlagCell.swift
//  Flags
//
//  Created by Руслан Кукса on 1/29/19.
//  Copyright © 2019 Ruslan Kuksa. All rights reserved.
//

import UIKit

class FlagCell: UITableViewCell {
    
    @IBOutlet var countryNameLabel: UILabel!
    @IBOutlet var flagImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
