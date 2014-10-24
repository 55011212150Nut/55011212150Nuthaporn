//
//  colorTwoViewController.swift
//  segue_Test
//
//  Created by student on 10/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
    protocol ColorTwoViewControllerDelegate{
        func myVCDidFinish(controller:colorTwoViewController,text:String)
    }
class colorTwoViewController: UIViewController {

    var delegate:ColorTwoViewControllerDelegate? = nil
    var colorString = ""
    
    
    @IBOutlet var colorLabel: UILabel!
    
    @IBAction func colorSelectionButton(sender: UIButton) {
        colorLabel.text = sender.titleLabel!.text
        if(colorLabel.text == "Red" || colorLabel.text == "Co: Red"){
            colorLabel.textColor = UIColor.redColor()
        }
        else if (colorLabel.text == "Green"){
            colorLabel.textColor = UIColor.greenColor()
        }
        else if (colorLabel.text == "Blue"){
            colorLabel.textColor = UIColor.blueColor()
        }
        
    }

    @IBAction func saveColor(sender: UIBarButtonItem) {
        
        if(delegate  != nil){
            delegate!.myVCDidFinish(self, text: colorLabel!.text!)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        colorLabel.text = colorString
        
        if(colorLabel.text == "Co: Red"){
            colorLabel.textColor = UIColor.redColor()
        }
        else if (colorLabel.text == "Co: Green"){
            colorLabel.textColor = UIColor.greenColor()
        }
        else if (colorLabel.text == "Co: Blue"){
            colorLabel.textColor = UIColor.blueColor()
        }
        else{
            colorLabel.textColor = UIColor.blackColor()
        }

    }

    
    
    
    //override func didReceiveMemoryWarning() {
       // super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    //}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
