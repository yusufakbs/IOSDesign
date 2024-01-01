//
//  ViewController.swift
//  UseOfMVVM
//
//  Created by Yusuf Akbaş on 1.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var tfNumberTwo: UITextField!
    @IBOutlet weak var tfNumberOne: UITextField!
    
    var viewModel = HomePageViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = viewModel.result.subscribe(onNext: { s in // listening
            self.labelResult.text = s
        })
        
    }
    
    
    @IBAction func buttonCollect(_ sender: Any) {
        if let numberReceivedOne = tfNumberOne.text,
           let numberReceivedTwo = tfNumberTwo.text {
            viewModel.addUp(numberReceivedOne: numberReceivedOne, numberReceivedTwo: numberReceivedTwo)
        }

    }
    

    @IBAction func buttonMultiplaction(_ sender: Any) {
        if let numberReceivedOne = tfNumberOne.text,
           let numberReceivedTwo = tfNumberTwo.text {
            viewModel.doMultiplication(numberReceivedOne: numberReceivedOne, numberReceivedTwo: numberReceivedTwo)
            }
        }

    }


