//
//  CategoryCell.swift
//  CoderSwag
//
//  Created by Sadman Sakib Saumik on 11/17/17.
//  Copyright © 2017 Sadman Sakib Saumik. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var CategoryImage: UIImageView!
    @IBOutlet weak var CategoryLabel:UILabel!
   
    func updateView(category: Category){
        CategoryImage.image = UIImage(named: category.imageName)
        CategoryLabel.text = category.title
    }

}
