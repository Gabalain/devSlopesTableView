//
//  ViewController.swift
//  TableView
//
//  Created by Alain Gabellier on 24/09/2018.
//  Copyright © 2018 Alain Gabellier. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var categoryTable: UITableView!
    
    // Data for CategoriesVC
    let categories = DataService.instance.getCategories()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.categoryTable.delegate = self
        self.categoryTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = categories[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    

}

