//
//  ViewController.swift
//  IP09_Tip-Calculator
//
//  Created by Rai, Rhea on 11/17/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var titleLbl: UILabel!
    
    @IBOutlet var tipDisplay: UILabel!
    @IBOutlet var totalDisplay: UILabel!
    
    @IBOutlet var billAmtField: UITextField!
    @IBOutlet var tipSelector: UISegmentedControl!
    
    
    var billAmt: Double = 0.00
    
    
    let tipArr: [Double] = [0.15,0.18,0.20,0.25]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func billAmountChanged(_ sender: UITextField) {
        print("done!")
    }
    @IBAction func billAmtChanged(_ sender: UITextField) {
        print("done")
    }
    
    func setTip() {
        
    }
    
    func calculateTip() {
        var tipPerc: Double = tipArr [tipSelector.selectedSegmentIndex]
        //var billVal: Double = (billAmtField.text![1...] as? Double)!
        
        
    }
    
}

