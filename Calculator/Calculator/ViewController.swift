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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello, world! it's me bitchesss")
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        
        // calculate tip and total
        let tip = bill * 0.1
        let total = bill + tip
        
        //update the total and tip labels
        tipLabel.text = "$\(tip)"
        totalLabel.text = ""
        
    
    }
    
    
    
}

