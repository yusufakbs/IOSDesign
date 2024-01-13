//
//  ViewController.swift
//  KingfisherUsage
//
//  Created by Yusuf Akbaş on 14.01.2024.
//

import UIKit
import Kingfisher
class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        showImage(imageName: "kofte.png")
    }

    @IBAction func buttonImageOne(_ sender: Any) {
        showImage(imageName: "ayran.png")

    }
    
    @IBAction func buttonImageTwo(_ sender: Any) {
        showImage(imageName: "su.png")

    }
    
    func showImage(imageName:String){
        if let url = URL(string:"http://kasimadalan.pe.hu/yemekler/resimler/\(imageName)"){
            DispatchQueue.main.async {
                self.imageView.kf.setImage(with: url)
            }
        }
    }
}

