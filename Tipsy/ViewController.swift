//
//  ViewController.swift
//  Tipsy
//
//  Created by Prahlad Anand on 1/15/20.
//  Copyright © 2020 Prahlad Anand. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalField: UILabel!
    @IBOutlet weak var percentageField: UISegmentedControl!
    @IBOutlet weak var tipField: UILabel!
    @IBOutlet weak var billField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTipLabel(_ sender: Any) {
        //Get Bill Amount
        let bill = Double(billField.text!) ?? 0
        
        
        //Calculate Tip/Total
        
        let percentages = [0.1, 0.15, 0.2, 0.25]
        let tip = bill * percentages[percentageField.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip/Total
        
        tipField.text = String(format:"$%.2f", tip)
        totalField.text = String(format:"$%.2f", total)
        
        
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
}

