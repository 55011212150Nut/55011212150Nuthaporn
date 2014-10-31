//
//  ViewController.swift
//  coreDataExample
//
//  Created by student on 10/31/2557 BE.
//  Copyright (c) 2557 student. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController , UITableViewDataSource{
    
    //var items = [String]() -> arrays ในตอนแรกทีสร้างขึ้นมาเพื่อเก็บค่าข้อมูลเป็นแบบ arrays
    var items = [NSManagedObject]()
    
    @IBOutlet weak var tableView: UITableView!
    
    //Action Buttom ที่ใช้เพิ่มข้อมูล
    @IBAction func addItem(sender: AnyObject) {
        var alert = UIAlertController(title: "New item", message: "Add a new item", preferredStyle:.Alert)
        
        let saveAction = UIAlertAction(title: "Save",style: .Default) {(action: UIAlertAction!) -> Void in
            
            let textField = alert.textFields![0] as UITextField
            //self.items.append(textField.text) --> ในตอนแรกใช้อาเรย์  String
            self.saveName(textField.text)
            self.tableView.reloadData()
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancle", style: .Default) {(action: UIAlertAction!) -> Void in
        }
        
        alert.addTextFieldWithConfigurationHandler {(textField: UITextField!) -> Void in
        }
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert, animated: true, completion: nil)
       
    }
    
    //ฟังก์ชั่น Save Name
    func saveName(name: String){ //save data ไว้ใน Core data
        //1
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        let managedContext = appDelegate.managedObjectContext!
        
        //2
        let entity = NSEntityDescription.entityForName("Item", inManagedObjectContext: managedContext)
        
        let item = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        //3
        item.setValue(name, forKey: "name")
        
        //4
        var error: NSError?
        if !managedContext.save(&error){
            println("Could not save \(error), \(error?.userInfo)")
        }
        
        //5
        items.append(item)
        
    }
    
    // MAEK: UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        
        //cell.textLabel!.text = items[indexPath.row] --> ในตอนแรกใช้อาเรย์  String
        
        let item = items[indexPath.row] //เปลี่ยนเป็นมาใช้ NSManagedObject
        cell.textLabel!.text = item.valueForKey("name") as String?
        
        return cell
    }
    
    override func viewWillAppear(animated: Bool) { //ให้ข้อมูลที่อยู่ใน Core data  แสดงขึ้นมา
        super.viewDidAppear(animated)
        
        //1
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        let managedContext = appDelegate.managedObjectContext!
        
        //2
        let fetchRequest = NSFetchRequest(entityName: "Item")
        
        //3
        var error: NSError?
        
        let fetchedResults = managedContext.executeFetchRequest(fetchRequest, error: &error) as [NSManagedObject]?
        
        if let results = fetchedResults{
            items = results
        
        } else{
            println("Could not detch \(error) , \(error!.userInfo)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\"Shopping List\""
        tableView.registerClass(UITableViewCell.self,forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

