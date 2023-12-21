//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Yusuf Akbaş on 21.12.2023.
//

import UIKit

class HomePageVC: UIViewController {

    @IBOutlet weak var labelHomePage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonDoIt(_ sender: Any) {
        labelHomePage.text = "Hoşgeldin"
       
    }
    
    @IBAction func buttonStart(_ sender: Any) {
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: nil)
    }
    
}

