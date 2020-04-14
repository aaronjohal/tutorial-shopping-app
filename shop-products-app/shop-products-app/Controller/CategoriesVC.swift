//
//  ViewController.swift
//  shop-products-app
//
//  Created by Aaron Johal on 13/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var categoryTable: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set the data source & delegate of the table view
        categoryTable.dataSource = self
        categoryTable.delegate = self
        
        

   
      
    }
    
    //numberOfRowsInSection - how many rows do you want the table row to show
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return DataService.instance.getCategories().count
    }
    
    //cellForRowAt indexpath - lets create a re-usable cell at this index path e.g. at item number 10, show this cell and display this kind of data
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row] //grab specific item from that category
            cell.updateViews(category: category)
            
            return cell
            
        } else {
            return CategoryCell () //blank cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row] //get the category that has been selected at that row
        
        //go to next screen when tapped
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            
            
            //setting the title of the next nav back button
                      
                      let barBtn = UIBarButtonItem()
                      barBtn.title = ""
                      navigationItem.backBarButtonItem = barBtn
                  }
            
            
            
            
            assert(sender as? Category != nil)
            
            productsVC.initProducts(category: sender as! Category) //* important, we are passing in the sender that we defined as category in the method above (didSelectRowAt) and specifying its a category
            
            
    }

}

