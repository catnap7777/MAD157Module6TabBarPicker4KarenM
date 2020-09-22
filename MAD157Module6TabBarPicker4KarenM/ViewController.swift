//
//  ViewController.swift
//  MAD157Module6TabBarPicker4KarenM
//
//  Created by Karen Mathes on 9/21/20.
//  Copyright © 2020 TygerMatrix Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myDatePicker: UIDatePicker!
    
    let dateFormatter: DateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
    }
    
    func ShowAlert(dateTime : String) {
        
        let alert = UIAlertController(title: "Selected Date and Time", message: "\(dateTime)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            //Just dismiss the action sheet
            })
        
        alert.addAction(okAction)
        self.present(alert, animated: true , completion: nil )
        
    }

    
    //.. This IBAction method retrieves the value of the myDatePicker IBOutlet (that represents the Date Picker) and converts this date and time into a string that gets stored in the selectedDate constant. Then it passes this selectedDate constant to the Show Alert function to display it on the alert controller
    @IBAction func getCurrentDateTime(_ sender: UIButton) {
        let selectedDate: String = dateFormatter.string(from: myDatePicker.date)
        ShowAlert(dateTime: selectedDate)
    }
    

    //..This dateChanged IBAction method runs every time the user changes the date or time in the Date Picker. It retrieves the .date property from the Date Picker and converts it into a string, which it stores in the selectedDate constant. Then it passes this selectedDate constant into the Show Alert function that displays it on an alert controller.
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        let selectedDate: String = dateFormatter.string(from: sender.date)
        ShowAlert(dateTime: selectedDate)

    }
    
}

