//
//  ViewController.swift
//  UsingWidgets
//
//  Created by Yusuf Akbaş on 25.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var textFieldGirdi: UITextField!
    
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonYap(_ sender: Any) {
        
        if let alinanVeri = textFieldGirdi.text {
            labelSonuc.text = alinanVeri
        }
        
    }
    
    
    @IBAction func buttonMutlu(_ sender: Any) {
        imageView.image  = UIImage(named: "mutlu")
    }
    
    
    @IBAction func buttonUzgun(_ sender: Any) {
        imageView.image = UIImage(named: "uzgun")
    }
    
    
    
    @IBAction func buttonGoster(_ sender: Any) {
        print("Switch Durum : \(mySwitch.isOn)")
        let secilenIndeks = segmentedControl.selectedSegmentIndex
        let secilenKategori = segmentedControl.titleForSegment(at: secilenIndeks)
        print("Seçim : \(secilenKategori!)")
        
    }
    
    
    @IBAction func switchDegisim(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch : ON ")
            
        }else{
            print("Switch : OFF")
        }
    }
    
    
    @IBAction func segmentedDegisim(_ sender: UISegmentedControl) {
        
        let secilenIndeks = sender.selectedSegmentIndex
        let secilenKategori = sender.titleForSegment(at: secilenIndeks)
        print("Seçim : \(secilenKategori!)")
        
    }
    
    
}

