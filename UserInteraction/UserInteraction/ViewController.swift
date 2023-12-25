//
//  ViewController.swift
//  UserInteraction
//
//  Created by Yusuf Akbaş on 25.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func buttonAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "Tamam", style: .cancel){ action in
            print("Tamam seçildi")
        }
        
        let tamamAction = UIAlertAction(title: "İptal", style: .destructive){ action in
            print("İptal seçildi")
        }
        
        
        alertController.addAction(iptalAction)
        alertController.addAction(tamamAction)
        
        self.present(alertController,animated: true)
    }
    
    
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "Tamam", style: .cancel){ action in
            print("Tamam Seçildi")
        }
        
        let tamamAction = UIAlertAction(title: "İptal", style: .destructive){ action in
            print("İptal Seçildi")
        }
        
        
        alertController.addAction(iptalAction)
        alertController.addAction(tamamAction)
        
        self.present(alertController,animated: true)
    }
    

    @IBAction func buttonPrivateAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        alertController.addTextField(){ textField in // İndex : 0
            textField.placeholder = "Veri Giriniz:"
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
            textField.becomeFirstResponder()
            
        }
        alertController.addTextField() // İndex : 1
        
        let iptalAction = UIAlertAction(title: "Kaydet", style: .cancel){ action in
            let tf = alertController.textFields![0] as UITextField
            let tf1 = alertController.textFields![1] as UITextField
            
            if let alinanVeri = tf.text  , let alinanVeri1 = tf1.text{
                print("Veri : \(alinanVeri) - \(alinanVeri1)")
            }
        }
        
        alertController.addAction(iptalAction)
      
        
        self.present(alertController,animated: true)
    }
    
}

