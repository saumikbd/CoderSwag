//
//  Product.swift
//  CoderSwag
//
//  Created by Sadman Sakib Saumik on 11/18/17.
//  Copyright © 2017 Sadman Sakib Saumik. All rights reserved.
//

import Foundation

struct Product{
    private(set) var title:String!
    private(set) var price:String!
    private(set) var imageName:String!
    
    init(title:String, price:String, imageName:String){
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
