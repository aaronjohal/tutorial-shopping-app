//
//  Category.swift
//  shop-products-app
//
//  Created by Aaron Johal on 13/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import Foundation


struct Category {
    
    private (set) public var title: String //not going to make it unwrapped optional, we will make sure the data is there when its initialised
    private (set) public var imageName: String //public for getting but private for setting - it cannot be set outside this class
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
}
