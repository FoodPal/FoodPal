//
//  Account.swift
//  FoodPal
//
//  Created by Teodor Ivanov on 11/10/17.
//  Copyright © 2017 Teodor Ivanov. All rights reserved.
//

import Foundation

struct Account {
    
    var username: String?
    var password: String?
    
    init(username:String, password:String){
        self.username = username
        self.password = password
    }
}
