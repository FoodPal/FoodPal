//
//  GroceryList.swift
//  FoodPal
//
//  Created by Teodor Ivanov on 10/25/17.
//  Copyright © 2017 Teodor Ivanov. All rights reserved.
//

import Foundation

class GroceryList{
//
    var name: String?
    var id: Int64?
    var cost: Double?
    var items = [GroceryItem]()
    var categories = [Category]()
    
    init(name: String, id: Int64){
        self.name = name
        self.id = id
    }
    
    convenience init(name: String, id: Int64, cost: Double, items: [GroceryItem], categories: [Category]){
        self.init(name: name, id: id)
        self.items = items
        self.cost = self.calculateTotalCost(items: items)
        self.categories = self.getCategories(items: items)
    }
    
    func getCategories(items: [GroceryItem]) -> [Category]{
        var categories = [Category]()
        for item in items {
            if let itemCategory = item.category{
                categories.append(itemCategory)
            }
        }
        return categories
    }
    
    //Incase I need to calculate it.
    func calculateTotalCost(items: [GroceryItem]) -> Double? {
        var cost = 0.00
        for item in items{
            if let itemCost = item.cost{
                cost += itemCost
            }
        }
        return cost
    }
}
