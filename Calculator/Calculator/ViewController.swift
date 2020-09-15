//
//  ViewController.swift
//  Calculator
//
//  Created by Jameka Echols on 9/10/20.
//  Copyright © 2020 CutThroatTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        // dismiss the keyboard
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        // get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        
        // calculate tip and total
        let tipPercentages = [0.1, 0.18, 0.2]
        
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update the total and tip labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    

    
    
}

