//
//  GameScreenVC.swift
//  CalismaYapisi
//
//  Created by Yusuf Akbaş on 21.12.2023.
//

import UIKit

class GameScreenVC: UIViewController {
    
    var kisi:Kisiler?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let m = kisi {
            print("-----OyunEkrani----")
            print("Kisi ad: \(m.ad!)")
            print("Kisi yaş: \(m.yas!)")
            print("Kisi boy: \(m.boy!)")
            print("Kisi bekar: \(m.bekar!)")
        }
        
    }
    
    @IBAction func buttonBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func buttonFinish(_ sender: Any) {
        //return to previous page
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
        
        // return to home page
        //navigationController?.popToRootViewController(animated: true)
        
    }
    
}
