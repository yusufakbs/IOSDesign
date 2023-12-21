//
//  ViewController.swift
//  iOSDesign
//
//  Created by Yusuf Akbaş on 20.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Pizza"
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "primaryColorX")
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "textColor")!,                                   .font:UIFont(name: "Pacifico-Regular", size: 22)!]
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        
    }


}

