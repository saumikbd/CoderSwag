//
//  ViewController.swift
//  CoderSwag
//
//  Created by Sadman Sakib Saumik on 11/17/17.
//  Copyright © 2017 Sadman Sakib Saumik. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var CategoryTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        CategoryTable.dataSource = self
        CategoryTable.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let Category = DataService.instance.getCategories()[indexPath.row]
            cell.updateView(category: Category)
            return cell
        }else{
            return CategoryCell()
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
        }
    }

}

