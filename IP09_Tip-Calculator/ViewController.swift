//
//  ViewController.swift
//  IP09_Tip-Calculator
//
//  Created by Rai, Rhea on 11/17/22.
//

import UIKit

class ViewController: UIViewController {
    
    //IB outlets
    @IBOutlet var titleLbl: UILabel!
    
    @IBOutlet var tipDisplay: UILabel!
    @IBOutlet var totalDisplay: UILabel!
    
    @IBOutlet var billAmtField: UITextField!
    @IBOutlet var tipSelector: UISegmentedControl!
    
    
    //variables
    var billAmt:Double = 0.00
    var tipPerc: Double = 0.15
    let tipArr: [Double] = [0.15,0.18,0.20,0.25]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func resetAll(_ sender: Any) {
        self.billAmt = 0.00
        self.tipPerc = 0.15
        billAmtField.text = ""
        updateVals()
        
    }
    
    //triggered by a change value of bill
    @IBAction func billAmtChanged(_ sender: UITextField) {
        
        //remove $ if its in the text
        if(sender.text==nil) {
            return
        }
        var billTemp: String = sender.text!
        if(billTemp.hasPrefix("$")) {
            billTemp.remove(at: billTemp.firstIndex(of: "$")!)
            
        }

        //convert to decimal and store
        if (billTemp.count >= 1) {
            let numFormat = NumberFormatter()
            numFormat.numberStyle = NumberFormatter.Style.decimal
            self.billAmt = numFormat.number(from: billTemp) as! Double
          
        }
        else {
            self.billAmt = 0.00
        }
        
        //update labels
        updateVals()
        
    }

    @IBAction func tipChanged(_ sender: Any) {
        self.tipPerc = tipArr [tipSelector.selectedSegmentIndex]
        updateVals()
    }
    
    //update the labels
    func updateVals() {
        //var tipPerc: Double =
        let tipVal = self.billAmt * tipPerc
        let total = self.billAmt + tipVal
        
        self.totalDisplay.text = "$" + String(format: "%.2f", total)
        self.tipDisplay.text = "$" + String(format: "%.2f", tipVal)
    }
    
}

