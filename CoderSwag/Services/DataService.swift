//
//  DataService.swift
//  CoderSwag
//
//  Created by Sadman Sakib Saumik on 11/18/17.
//  Copyright © 2017 Sadman Sakib Saumik. All rights reserved.
//

import Foundation

struct DataService {
    static let instance = DataService()
    private let categories = [
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
            Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
            Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
            Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
            Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black", price: "$32", imageName: "hoodie04.png")
    ]
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04"),
        Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05")
    ]
    private let digital = [Product]()
    
    func getCategories()->[Category]{
        return categories
    }
    func getProducts(forCategoryTitle title:String) ->[Product]{
        switch title {
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "SHIRTS":
            return getShirts()
        case "DIGITAL":
            return getDigital()
        default:
            return getShirts()
        }
    }
    
    func getHats()->[Product]{
        return hats;
    }
    func getHoodies()->[Product]{
        return hoodies;
    }
    func getShirts()->[Product]{
        return shirts;
    }
    func getDigital()->[Product]{
        return digital;
    }
    
}
