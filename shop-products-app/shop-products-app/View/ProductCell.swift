//
//  ProductCell.swift
//  shop-products-app
//
//  Created by Aaron Johal on 13/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    
    func updateView(product: Product){
       productImage.image = UIImage(named: product.imageName)
       productTitle.text = product.title
        productPrice.text = product.price
        
    }
}
