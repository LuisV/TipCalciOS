//
//  ViewController.swift
//  TipCalc
//
//  Created by Luis Valencia on 1/23/19.
//  Copyright © 2019 Luis Valencia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControls: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnTap(_ sender: Any) {
       
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //GET
        let bill = Double(billField.text!) ?? 0
        
      
        
        //Calc
        let tipPercentages = [0.1,0.15,0.2]
        let tip = bill * tipPercentages[tipControls.selectedSegmentIndex]
        let total = bill + tip
        
        //Update
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text =  String(format: "$%.2f", total)
    }
}

