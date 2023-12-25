//
//  ViewController.swift
//  UsingTabBar
//
//  Created by Yusuf Akbaş on 22.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let tabItems = tabBarController?.tabBar.items{
            let anaSayfaItem = tabItems[0]
            let ayarlarItem = tabItems[1]
            
            anaSayfaItem.badgeValue = "3"
            ayarlarItem.badgeValue = "Yeni"
        }
        
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.systemIndigo
        
        renkDegistir(itemApperance: appearance.stackedLayoutAppearance)
        renkDegistir(itemApperance: appearance.inlineLayoutAppearance)
        renkDegistir(itemApperance: appearance.stackedLayoutAppearance)

        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
        
        
        
        
    }

    func renkDegistir(itemApperance:UITabBarItemAppearance){
        // seçili olan durum
        itemApperance.selected.iconColor = UIColor.systemOrange
        itemApperance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemOrange]
        itemApperance.selected.badgeBackgroundColor = UIColor.systemMint
        // Seçili olmayan durum
        itemApperance.normal.iconColor = UIColor.white
        itemApperance.normal.titleTextAttributes = [.foregroundColor: UIColor.lightGray]
        itemApperance.normal.badgeBackgroundColor = UIColor.lightGray
    }

    
    
    
}

