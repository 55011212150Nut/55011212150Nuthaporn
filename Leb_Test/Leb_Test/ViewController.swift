//
//  ViewController.swift
//  Leb_Test
//
//  Created by student on 10/24/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,addViewControllerDelegate {

    let cellIdentifier = "cellTdentifier"
    @IBOutlet weak var tableView: UITableView!
    var x = "5555"
    var y = "111"
    var z = "222"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView! , numberOfRowsInSection section: Int) ->Int{
        return 1
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        var cell = tableView.dequeueReusableCellWithIdentifier(self.cellIdentifier) as UITableViewCell
        
        cell.textLabel!.text = x
        cell.textLabel!.text = y
        cell.textLabel!.text = z
        return cell
        
    }
    
    func myVCDidFinish(controller: addViewController,id:String,name:String,major:String) {
        
        var id1 = id
        var name1 = name
        var major1 = major
        
        controller.navigationController?.popViewControllerAnimated(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "mySegue"{
            let vc = segue.destinationViewController as addViewController
            //vc.colorString = color_Label.text!
            vc.delegate = self
        }
    }
    

}

