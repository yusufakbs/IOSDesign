//
//  HomePageViewModel.swift
//  UseOfMVVM
//
//  Created by Yusuf Akbaş on 1.01.2024.
//

import Foundation
import RxSwift

class HomePageViewModel {
    var result = BehaviorSubject<String>(value: "0")
    var mathRepo = MathRepository()
    
    init() {
        result = mathRepo.result
    }
    
    func addUp(numberReceivedOne:String, numberReceivedTwo:String){
        mathRepo.addUp(numberReceivedOne: numberReceivedOne, numberReceivedTwo: numberReceivedTwo)
       
    }
    
    func doMultiplication(numberReceivedOne:String, numberReceivedTwo:String){
        mathRepo.doMultiplication(numberReceivedOne: numberReceivedOne, numberReceivedTwo: numberReceivedTwo)
    }
    
}
