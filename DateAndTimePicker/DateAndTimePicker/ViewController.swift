//
//  ViewController.swift
//  DateAndTimePicker
//
//  Created by Yusuf Akbaş on 1.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTime: UITextField!
    @IBOutlet weak var tfDate: UITextField!

    var datePicker : UIDatePicker?
    var timePicker : UIDatePicker?
    override func viewDidLoad() {
        super.viewDidLoad()

        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        tfDate.inputView = datePicker
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        tfTime.inputView = timePicker
        
        if #available(iOS 13.4, *){
            datePicker?.preferredDatePickerStyle = .wheels
            timePicker?.preferredDatePickerStyle = .wheels
        }
        
        let touchDetection = UITapGestureRecognizer(target: self, action: #selector(touchDetectionMethod))
        view.addGestureRecognizer(touchDetection)
        
        datePicker?.addTarget(self, action: #selector(showDate(uiDatePicker:)), for: .valueChanged)
        
        timePicker?.addTarget(self, action: #selector(showTime(uiTimePicker:)), for: .valueChanged)
        
    }
    
    @objc func touchDetectionMethod() {
        print("Ekrana dokunuldu")
        view.endEditing(true)
        
    }
    
    @objc func showDate(uiDatePicker:UIDatePicker) {
        let format = DateFormatter()
        format.dateFormat = "MM/dd/yyyy"
        let dateReceived = format.string(from: uiDatePicker.date)
        tfDate.text = dateReceived

        
    }

    @objc func showTime(uiTimePicker:UIDatePicker) {
        let format = DateFormatter()
        format.dateFormat = "HH:mm"
        let timeReceived = format.string(from: uiTimePicker.date)
        tfTime.text = timeReceived

    }

}

