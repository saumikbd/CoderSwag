//
//  ProductsVC.swift
//  CoderSwag
//
//  Created by Sadman Sakib Saumik on 11/18/17.
//  Copyright © 2017 Sadman Sakib Saumik. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var ProductsCollection:UICollectionView!
    private(set) public var Products = [Product]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        ProductsCollection.dataSource = self
        ProductsCollection.delegate = self
    }
    func initProducts(category: Category){
       Products = DataService.instance.getProducts(forCategoryTitle: category.title)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductsCell", for: indexPath) as? ProductsCell {
            let Product = Products[indexPath.row]
            cell.updateView(product: Product)
            return cell
        }
        return ProductsCell()
    }

    

}
