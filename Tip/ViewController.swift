//
//  ViewController.swift
//  Tip
//
//  Created by Ian Carter on 6/12/20.
//  Copyright © 2020 Ian Carter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBOutlet weak var billField: UITextField!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var partySizeLabel: UILabel!
    
    @IBOutlet weak var partySizeSlider: UISlider!
    
    @IBOutlet weak var splitBill: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amount
        let bill = Double(billField.text!) ?? 0
        //Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        //let defaults = UserDefaults.standard
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let partyNumber: Int = Int(partySizeSlider.value)
        let split = total / Double(partyNumber)
        
        //update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        partySizeLabel.text = "Party of \(Int(partySizeSlider.value))"
        
        splitBill.text = String(format: "$%.2f", split)
        
    }
    
    
    
    
    
    
}

