//
//  ProductsCell.swift
//  CoderSwag
//
//  Created by Sadman Sakib Saumik on 11/18/17.
//  Copyright © 2017 Sadman Sakib Saumik. All rights reserved.
//

import UIKit

class ProductsCell: UICollectionViewCell {
    @IBOutlet weak var image:UIImageView!
    @IBOutlet weak var title:UILabel!
    @IBOutlet weak var price: UILabel!
    
    func updateView(product:Product){
        image.image = UIImage(named: product.imageName)
        title.text = product.title
        price.text = product.price
    }
    
}
