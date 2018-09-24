//
//  DataService.swift
//  TableView
//
//  Created by Alain Gabellier on 24/09/2018.
//  Copyright © 2018 Alain Gabellier. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService() // This is a Singleton to refer to a single instance of DataService
    
    private let categories = [
        Category(title: "SHIRTS", image: "shirts.png"),
        Category(title: "HOODIES", image: "hoodies.png"),
        Category(title: "HAT", image: "hats.png"),
        Category(title: "DIGITAL", image: "digital.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
}

