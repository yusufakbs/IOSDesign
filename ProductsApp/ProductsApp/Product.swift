//
//  Product.swift
//  ProductsApp
//
//  Created by Yusuf Akbaş on 28.12.2023.
//

import Foundation
class Product{
    var id: Int?
    var name: String?
    var image: String?
    var price: Int?
    
    init() {
    
    }
    
    init(id: Int, name: String, image: String, price: Int) {
        self.id = id
        self.name = name
        self.image = image
        self.price = price
    }
}
