//
//  ViewController.swift
//  segue_Test
//
//  Created by student on 10/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ColorTwoViewControllerDelegate {
    
    @IBOutlet var color_Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func myVCDidFinish(controller: colorTwoViewController, text: String) {
        color_Label.text = "Co: " + text
        
       if(text == "Red"){
            color_Label.textColor = UIColor.redColor()
        }
        else if (text == "Green"){
            color_Label.textColor = UIColor.greenColor()
        }
        else if (text == "Blue"){
            color_Label.textColor = UIColor.blueColor()
        }
       else{
            color_Label.textColor = UIColor.blackColor()
        }
        
        controller.navigationController?.popViewControllerAnimated(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "mySegue"{
            let vc = segue.destinationViewController as colorTwoViewController
            vc.colorString = color_Label.text!
            vc.delegate = self
        }
    }
    //override func didReceiveMemoryWarning() {
        //super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    //}


}

