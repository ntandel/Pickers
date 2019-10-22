//
//  SingleComponentPickerViewController.swift
//  Pickers
//
//  Created by Nisha Tandel on 2019-10-12.
//  Copyright © 2019 Nisha Tandel. All rights reserved.
//

import UIKit

class SingleComponentPickerViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var singlePicker: UIPickerView!
    private let characterName = ["Luke","Leia","Han","Chewbacca","Artoo","Threepio","Lando"]
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func onButtonPressed(_ sender: Any) {
        let row = singlePicker.selectedRow(inComponent: 0)
        let selected = characterName[row]
        let title = "You Selected\(selected)!"
        
        let alert = UIAlertController(
            title: title,
            message: "Thankyou for choosing",
            preferredStyle: .alert)
        
        let action = UIAlertAction(
            title: "You're welcome",
            style: .default,
            handler: nil)
        alert.addAction(action)
        present(alert, animated: true,
                completion: nil)
        
    }

    // MARK :- Picker Data Source Methods
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return characterName.count
    }
    
    // MARK:- Picker Delegate Methods
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return characterName[row]
    }
    
}
