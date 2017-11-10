//
//  GroceryItem.swift
//  FoodPal
//
//  Created by Teodor Ivanov on 10/25/17.
//  Copyright © 2017 Teodor Ivanov. All rights reserved.
//

import Foundation
import UIKit

struct GroceryItem {
    
    var id: Int64?
    var name: String?
    var description: String?
    var cost: Double?
    var category: Category?
    
    /* Todo:
    var image: UIImageView?
    var calorie: Double?
     */

    init(id: Int64, name: String, description:String, cost: Double, category: Category) {
        self.name = name
        self.description = description
        self.cost = cost
        self.category = category
    }
    
    init(id: Int64, name: String, description:String, cost: Double, category: String) {
        self.init(id: id, name: name, description: description, cost: cost, category: Category(name: category))
    }
}
