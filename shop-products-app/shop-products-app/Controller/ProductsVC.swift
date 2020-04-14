//
//  ProductsVC.swift
//  shop-products-app
//
//  Created by Aaron Johal on 14/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    
    
    @IBOutlet weak var productsCollection: UICollectionView!

    
    private (set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.dataSource = self
        productsCollection.delegate = self
        
       

    }
    
  
    
    func initProducts(category: Category){
       products = DataService.instance.getProducts(forCategoryTitle: category.title)
        //set the navigation title
        navigationItem.title = category.title
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            
            let product = products[indexPath.row]
            cell.updateView(product: product)
            
            return cell
        }
            
        return ProductCell() //if the above didn't return then we will return an empty cell
        
    }
    
    
    /** This function lets you decide the size of the cells. What we want from a cell is to have a slightly smaller width than the screen (to leave some space between the cells) and to have a height that will be enough for the image and the text.
     
     https://www.udemy.com/course/devslopes-ios12/learn/lecture/11437934#questions/9624760*/
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = view.frame.size.width / 2 - 5
        return CGSize(width: cellWidth, height: cellWidth + 100)
    }

 

}
