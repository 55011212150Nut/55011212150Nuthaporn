//
//  ViewController.swift
//  Tipcaculator
//
//  Created by Student on 9/12/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var totalTaxtField : UITextField!
    @IBOutlet var taxPCtSlider : UISlider!
    @IBOutlet var taxPctLabel : UILabel!
    @IBOutlet var resultsTextView : UITextView!
    
    let tipCalc = TipCalculatorModel(total : 33.25,taxPct : 0.06)
    
    func refreshUI(){
        totalTaxtField.text = String(format: "%0.2f" , tipCalc.total)
        
        taxPCtSlider.value = Float(tipCalc.total)*100.0
        
        taxPctLabel.text = "Tax Percentage (\(Int(taxPCtSlider.value))%)"
        
        resultsTextView.text = ""
    }
    
    @IBAction func action(sender: AnyObject) {
    }
    
    @IBOutlet weak var SLIDER : UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTapped(sender : AnyObject){

        tipCalc.total = Double((totalTaxtField.text as NSString).doubleValue)
        let possibleTips = tipCalc.returnPossibleTips()
        var results = ""
        
        for(tipPct,tipValue) in possibleTips{
            results += "\(tipPct)%: \(tipValue)\n"
        }
        
        resultsTextView.text = results
    }
    
    @IBAction func taxPercentageChanged(sender : AnyObject){
        tipCalc.taxPct = Double(taxPCtSlider.value)/100.0
        refreshUI()
    }
    @IBAction func viewTapped(sender : AnyObject){
        totalTaxtField.resignFirstResponder()
        
        
    }



 

}

