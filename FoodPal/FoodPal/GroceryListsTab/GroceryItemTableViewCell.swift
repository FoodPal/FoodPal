//
//  GroceryItemTableViewCell.swift
//  FoodPal
//
//  Created by Teodor Ivanov on 11/10/17.
//  Copyright © 2017 Teodor Ivanov. All rights reserved.
//

import UIKit

class GroceryItemTableViewCell: UITableViewCell {
    @IBOutlet weak var groceryItemUIImageView: UIImageView!
    @IBOutlet weak var groceryItemNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
