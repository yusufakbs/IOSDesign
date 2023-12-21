//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Yusuf Akbaş on 21.12.2023.
//

import UIKit

class HomePageVC: UIViewController {
    // Leading - Left - Start
    // Trailing - Right - End

    @IBOutlet weak var labelHomePage: UILabel!
    override func viewDidLoad() { // The application runs when it is first opened (it runs once)
        super.viewDidLoad()
        print("viewDidLoad Worked")
    }
    
    override func viewWillAppear(_ animated: Bool) { // Runs every time the page appears
        print("viewWillAppear Worked")

    }
    
    override func viewWillDisappear(_ animated: Bool) { // Works whenever the page is invisible
        print("viewWillDissappear Worked")
    }

    @IBAction func buttonDoIt(_ sender: Any) {
        labelHomePage.text = "Welcome"
       
    }
    
    @IBAction func buttonStart(_ sender: Any) {
        let kisi = Kisiler(ad: "Ahmet",yas: 23, boy: 1.78, bekar: false)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare method worked")
        
        if segue.identifier == "oyunEkraninaGecis" {
            print("oyunekraninagecis Worked")
            
            if let veri = sender as? Kisiler {
                let gidilecekVC = segue.destination as! GameScreenVC
                gidilecekVC.kisi = veri
            }
            
        }
    }
    
    
    @IBAction func buttonAdd(_ sender: Any) {
        print("Add Seçildi")
    }
    
    
    @IBAction func buttonSave(_ sender: Any) {
        print("Save Seçildi")
    }
}

