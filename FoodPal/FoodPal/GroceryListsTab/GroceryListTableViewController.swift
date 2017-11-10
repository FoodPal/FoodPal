//
//  GroceryListTableViewController.swift
//  FoodPal
//
//  Created by Teodor Ivanov on 10/8/17.
//  Copyright © 2017 Teodor Ivanov. All rights reserved.
//

import UIKit

class GroceryListTableViewController: UITableViewController {
    
    var groceryList = GroceryList(name: "myList", id: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let apple = GroceryItem(id: 2, name: "Apple", description: "Red Gala apples", cost: 2.99, category: "Fruit")
        let orange = GroceryItem(id: 3, name: "Orange", description: "Orange Native orange from Mexico", cost: 3.99, category: "Fruit")
        let lettuce = GroceryItem(id: 56, name: "lettuce", description: "green ball", cost: 3.50, category: "Vegetable")
        let bread = GroceryItem(id: 70, name: "Bread", description: "Wheat Bread", cost: 1.99, category: "Grain")
        
        groceryList.items.append(apple)
        groceryList.items.append(orange)
        groceryList.items.append(lettuce)
        groceryList.items.append(bread)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of row
        return groceryList.items.count
    }
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return groceryList.categories[section].name
//    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if let groceryItemCell = tableView.dequeueReusableCell(withIdentifier: "groceryItemCell", for: indexPath) as? GroceryItemTableViewCell {
            groceryItemCell.groceryItemNameLabel.text = groceryList.items[indexPath.row].name
            groceryItemCell.groceryItemUIImageView.image = #imageLiteral(resourceName: "Groceries")
            
            cell = groceryItemCell
        }
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


}
