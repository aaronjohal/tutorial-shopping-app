//
//  Product.swift
//  shop-products-app
//
//  Created by Aaron Johal on 14/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import Foundation


struct Product {
    
    
    private (set) public var title: String
    private (set) public var price: String
    private (set) public var imageName: String
   
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
        
    }
    
}
