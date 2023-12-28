//
//  ViewController.swift
//  ProductsApp
//
//  Created by Yusuf Akbaş on 28.12.2023.
//

import UIKit

class HomePage: UIViewController {

    @IBOutlet weak var productsTableView: UITableView!
    
    var productsList = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsTableView.delegate = self
        productsTableView.dataSource = self
        
        let p1 = Product(id: 1, name: "Macbook Pro 14", image: "bilgisayar", price: 43000)
        let p2 = Product(id: 2, name: "Rayban Club Master", image: "gozluk", price: 2500)
        let p3 = Product(id: 3, name: "Sony ZX Series", image: "kulaklik", price: 40000)
        let p4 = Product(id: 4, name: "Gio Armani", image: "parfum", price: 2000)
        let p5 = Product(id: 5, name: "Casio X Series", image: "saat", price: 8000)
        let p6 = Product(id: 6, name: "Dyson V8", image: "supurge", price: 18000)
        let p7 = Product(id: 7, name: "Iphone 13", image: "telefon", price: 32000)
        
        productsList.append(p1)
        productsList.append(p2)
        productsList.append(p3)
        productsList.append(p4)
        productsList.append(p5)
        productsList.append(p6)
        productsList.append(p7)
        
        productsTableView.separatorColor = UIColor(white: 0.95, alpha: 1)

    }
}

extension HomePage : UITableViewDelegate, UITableViewDataSource, CellProtocol{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let product = productsList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "productsCell") as! ProductsCell
        
        cell.imageViewProduct.image = UIImage(named: product.image!)
        cell.labelProductName.text = product.name
        cell.labelProductPrice.text = "\(product.price!) ₺"
        
        cell.backgroundColor = UIColor(white: 0.95, alpha: 1)
        cell.cellBackground.layer.cornerRadius = 10.0
        cell.selectionStyle = .none
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let product = productsList[indexPath.row]
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete"){
            UIContextualAction,view,bool in
            print("\(product.name!) deleted")
            
        }
        
        let editAction = UIContextualAction(style: .normal, title: "Edit"){
            UIContextualAction,view,bool in
            print("\(product.name!) edited")
            
        }
        
        return UISwipeActionsConfiguration(actions: [deleteAction,editAction])
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let product = productsList[indexPath.row]
        performSegue(withIdentifier: "toDetails", sender: product)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetails" {
            if let product = sender as? Product {
                let toGoVC = segue.destination as! DetailsPage
                toGoVC.product = product
            }
        }
    }
    
    func addToCartTouch(IndexPath: IndexPath) {
        let product = productsList[IndexPath.row]
        print("\(product.name!) add to cart!")
    }
}
