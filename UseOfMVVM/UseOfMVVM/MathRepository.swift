//
//  MathRepository.swift
//  UseOfMVVM
//
//  Created by Yusuf Akbaş on 1.01.2024.
//

import Foundation
import RxSwift

class MathRepository {
    var result = BehaviorSubject<String>(value: "0")
    
    func addUp(numberReceivedOne:String, numberReceivedTwo:String){
        if let numberOne = Int(numberReceivedOne), let numberTwo = Int(numberReceivedTwo) {
            let total = numberOne + numberTwo
            result.onNext(String(total)) // trigger
        }
    }
    
    func doMultiplication(numberReceivedOne:String, numberReceivedTwo:String){
        if let numberOne = Int(numberReceivedOne), let numberTwo = Int(numberReceivedTwo) {
            let multiplication = numberOne * numberTwo
            result.onNext(String(multiplication)) // trigger
        }
    }
    
    
}
