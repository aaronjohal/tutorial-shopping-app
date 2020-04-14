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
    
    
    
    
    private let hats =
    [Product(title: "Beanie Hat", price: "£15.00", imageName: "hat01.png"),
     Product(title: "Black Hat", price: "£18.00", imageName: "hat02.png"),
     Product(title: "White Hat", price: "£22.00", imageName: "hat03.png"),
     Product(title: "Snapback Hat", price: "£30.00", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product (title: "Logo hoody grey", price: "£32", imageName: "hoodie01.png"),
        Product (title: "Logo hoody red", price: "£35", imageName: "hoodie02.png"),
        Product (title: "Logo hoody grey", price: "£40", imageName: "hoodie03.png"),
        Product (title: "Logo hoody black", price: "£45", imageName: "hoodie04.png"),
        
    ]
    
    private let shirts = [
        Product (title: "Logo shirt black", price: "£18", imageName: "shirt01.png"),
        Product (title: "Logo shirt light grey", price: "£19", imageName: "shirt02.png"),
        Product (title: "Logo shirt red", price: "£25", imageName: "shirt03.png"),
        Product (title: "Delegate grey shirt", price: "£30", imageName: "shirt04.png"),
        Product (title: "black shirt", price: "£35", imageName: "shirt05.png"),
    ]
    
    
    private let digitalGoods = [Product]() //empty array of type product
    
    func getCategories()-> [Category]{
           return categories
           
       }

    
    
    func getProducts(forCategoryTitle title:String) -> [Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return  getHoodies()
        case "DIGITAL":
            return getDigital()
        default:
            return getShirts()
        }
        
      
        
        
    }
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoodies() -> [Product]{
        return hoodies
        
    }
    
    func getShirts() -> [Product]{
        return shirts
        
    }
    
    func getDigital() -> [Product]{
        return digitalGoods
        
        
    }
    
   
}
