//
//  CategoryCellTableViewCell.swift
//  shop-products-app
//
//  Created by Aaron Johal on 13/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle : UILabel!

   
    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
        
    }

}
