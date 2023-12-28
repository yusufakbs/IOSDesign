//
//  DetailsPage.swift
//  ProductsApp
//
//  Created by Yusuf Akbaş on 28.12.2023.
//

import UIKit

class DetailsPage: UIViewController {

    @IBOutlet weak var labelProductPrice: UILabel!
    @IBOutlet weak var imageViewProduct: UIImageView!
    
    var product : Product?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let p = product {
            self.navigationItem.title = p.name
            imageViewProduct.image = UIImage(named: p.image!)
            labelProductPrice.text = "\(p.price!) ₺"
        }

    }
    
    @IBAction func buttonAddToCart(_ sender: Any) {
        if let p = product {
            print("Details Page : \(p.name!) add to cart!")
        }
    }
}
