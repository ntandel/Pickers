//
//  DatePickerViewController.swift
//  Pickers
//
//  Created by Nisha Tandel on 2019-10-12.
//  Copyright © 2019 Nisha Tandel. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var datepicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onButtonPressed(_ sender: Any)
    {
        let date = datepicker.date
        let message = "the date and time you selected is \(date)"
        let alert = UIAlertController( title: "Date and Time selected", message: message, preferredStyle: .alert)
        let action = UIAlertAction( title : "That's so true!", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
}
