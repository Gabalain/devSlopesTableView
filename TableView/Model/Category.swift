//
//  Category.swift
//  TableView
//
//  Created by Alain Gabellier on 24/09/2018.
//  Copyright © 2018 Alain Gabellier. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String // private for setting but public for fetching
    private(set) public var image: String
    
    init(title: String, image:String) {
        self.title = title
        self.image = image
    }
}
