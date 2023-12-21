//
//  GameScreenVC.swift
//  CalismaYapisi
//
//  Created by Yusuf Akbaş on 21.12.2023.
//

import UIKit

class GameScreenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
