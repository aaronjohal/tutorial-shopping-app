//
//  DataService.swift
//  shop-products-app
//
//  Created by Aaron Johal on 13/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import Foundation

//singleton = one copy in memory


class DataService {
    
    static let instance = DataService () //singleton, static means there is only one copy in memory so we can only create one version of data service. Every time we go in and grab this instance, it will always refer to the same instance in memory
    
    
    
    
   // You typically use private access to hide the implementation details of a specific piece of functionality when those details are used only within a single declaration.
   
    private let categories = //private = non accessible outside class
        [Category(title: "SHIRTS", imageName: "shirts.png"),
         Category(title: "HOODIES", imageName: "hoodies.png"),
         Category(title: "HATS", imageName: "hats.png"),
         Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    
    
    
    
    
    func getCategories()-> [Category]{
        return categories
        
    }

}
