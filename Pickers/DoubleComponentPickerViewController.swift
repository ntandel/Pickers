//
//  DoubleComponentPickerViewController.swift
//  Pickers
//
//  Created by Nisha Tandel on 2019-10-12.
//  Copyright © 2019 Nisha Tandel. All rights reserved.
//

import UIKit

class DoubleComponentPickerViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{

    @IBOutlet weak var doublePicker: UIPickerView!
    private let fillingComponent = 0
    private let breadComponent = 1
    private let fillingTypes = ["Ham","Turkey","Peanut Butter","Tuna Salad","Chicken Salad","Roast Bref","Vegemite"]
    private let breadTypes = ["White","Whole Wheat","Rye","Sourdough","Seven Grain"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onButtonPressed(_ sender: Any) {
        let fillingRow = doublePicker.selectedRow(inComponent: fillingComponent)
        let breadRow = doublePicker.selectedRow(inComponent: breadComponent)
        
        let filling = fillingTypes[fillingRow]
        let bread = breadTypes[breadRow]
        let message
            = "Your \(filling) on \(bread) bread will bw right up."
        
        let alert = UIAlertController(
            title: "Thank you for your order",
            message: message,
            preferredStyle: .alert)
        let action = UIAlertAction(
            title: "GREAT",
            style: .default,
            handler: nil)
        alert.addAction(action)
        present(alert
            , animated: true
            , completion: nil)
        
    }
    
    // MARK:- Picker Data Source Methids
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    private func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> Int
    {
        if component == breadComponent
        {
            return breadTypes.count
        }
        else
        {
            return fillingTypes.count
        }
    }
    
    // MARK:- Picker Delegate Methods
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        if component == breadComponent
        {
            return breadTypes[row]
        }
        else
        {
            return fillingTypes[row]
        }
    }
    
}
