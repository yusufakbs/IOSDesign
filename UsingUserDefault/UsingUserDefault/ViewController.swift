//
//  ViewController.swift
//  UsingUserDefault
//
//  Created by Yusuf Akbaş on 9.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelCounter: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Defination
        let ud = UserDefaults.standard
        
        // Register
        ud.set("Yusuf", forKey: "name")
        
        // Delete
        //ud.removeObject(forKey: "name")
        
        let comingName = ud.string(forKey: "name") ?? "Name is not found"
        
        print("Coming name : \(comingName)")
        
        // Counter App
        var counter = ud.integer(forKey: "counter") // 0
        
        counter = counter + 1
        
        ud.set(counter, forKey: "counter")
        
        labelCounter.text = "Number of openings : \(counter)"
    
    }


}

