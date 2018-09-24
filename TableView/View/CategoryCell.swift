//
//  CategoryCell.swift
//  TableView
//
//  Created by Alain Gabellier on 24/09/2018.
//  Copyright © 2018 Alain Gabellier. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.image)
        categoryTitle.text = category.title
    }

}
