//
//  addViewController.swift
//  Leb_Test
//
//  Created by student on 10/24/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
    protocol addViewControllerDelegate{
        func myVCDidFinish(controller:addViewController,id:String,name:String,major:String)
    }

class addViewController: UIViewController {

    var delegate:addViewControllerDelegate? = nil
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var idTextField: UITextField!
    @IBOutlet var majorTextField: UITextField!
    
    //var id = [String]()
   // var name = [String]()
   // var major = [String]()
    
    @IBAction func addData(sender: AnyObject) {
        var id = idTextField.text
        var name = nameTextField.text
        var major = majorTextField.text
        
        if(delegate  != nil){
            delegate!.myVCDidFinish(self, id: id, name: name
                , major: major)
        }
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
