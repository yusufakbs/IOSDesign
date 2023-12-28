//
//  ProductsCell.swift
//  ProductsApp
//
//  Created by Yusuf Akbaş on 28.12.2023.
//

import UIKit

protocol CellProtocol {
    func addToCartTouch(IndexPath:IndexPath)
    }

class ProductsCell: UITableViewCell {

    @IBOutlet weak var imageViewProduct: UIImageView!
    @IBOutlet weak var cellBackground: UIView!
    @IBOutlet weak var labelProductPrice: UILabel!
    @IBOutlet weak var labelProductName: UILabel!
    
    
    var cellProtocol : CellProtocol?
    var indexPath: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    @IBAction func buttonAddToCart(_ sender: Any) {
        cellProtocol?.addToCartTouch(IndexPath: indexPath!)
    }
}
