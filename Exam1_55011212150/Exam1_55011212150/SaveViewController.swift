//
//  SaveViewController.swift
//  Exam1_55011212150
//
//  Created by student on 12/17/2557 BE.
//  Copyright (c) 2557 student. All rights reserved.
//

import UIKit
import CoreData

class SaveViewController: UIViewController {
        
        @IBOutlet weak var textName: UITextField!
        @IBOutlet weak var textAmount: UITextField!
        @IBOutlet weak var textPrice: UITextField!
        
        var nameArray = [NSManagedObject]()
        var amount = [NSManagedObject]()
        var price = [NSManagedObject]()
        let name1:String = ""
        let amount1:Int = 0
        let price1:Double = 0.0
    
    
        @IBAction func addData(sender: AnyObject) {
            
            var alert = UIAlertController(title: "New Date", message: "Add a new Data", preferredStyle: .Alert )
            
            let SaveAction = UIAlertAction(title: "OK", style: .Default){ (action: UIAlertAction!) -> Void in
                let name1 = self.textName.text
                let amount1 = Int((self.textAmount.text as NSString).integerValue)
                let price1 = Double((self.textPrice.text as NSString).doubleValue)
                
                //self.saveName(name1)
                
            }
            
            let cancleAction = UIAlertAction(title: "Cancle", style: .Default){ (action: UIAlertAction!) -> Void in
                
            }
            
            alert.addAction(SaveAction)
            alert.addAction(cancleAction)
            presentViewController(alert, animated: true, completion: nil)
        }
        
        //var items = [String]() -> arrays ในตอนแรกทีสร้างขึ้นมาเพื่อเก็บค่าข้อมูลเป็นแบบ arrays
        //var items = [NSManagedObject]()
        
        @IBOutlet weak var tableView: UITableView!
        
    @IBAction func add(sender: AnyObject) {
        var alert = UIAlertController(title: "New item", message: "Add a new item", preferredStyle:.Alert)
        
        let saveAction = UIAlertAction(title: "Save",style: .Default) {(action: UIAlertAction!) -> Void in
            
            let textField = alert.textFields![0] as UITextField
            //self.items.append(textField.text) --> ในตอนแรกใช้อาเรย์  String
            //self.saveName(self.name1)
            //self.saveAmount(self.amount1)
            //self.savePrice(self.price1)
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancle", style: .Default) {(action: UIAlertAction!) -> Void in
        }
        
        alert.addTextFieldWithConfigurationHandler {(textField: UITextField!) -> Void in
        }
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert, animated: true, completion: nil)
        

    }
        //Action Buttom ที่ใช้เพิ่มข้อมูล
        @IBAction func addItem(sender: AnyObject) {
            var alert = UIAlertController(title: "New item", message: "Add a new item", preferredStyle:.Alert)
            
            let saveAction = UIAlertAction(title: "Save",style: .Default) {(action: UIAlertAction!) -> Void in
                
               // let textField = alert.textFields![0] as UITextField
                //self.items.append(textField.text) --> ในตอนแรกใช้อาเรย์  String
                //self.saveName(self.name1)
                //self.saveAmount(self.amount1)
                //self.savePrice(self.price1)
                
            }
            
            let cancelAction = UIAlertAction(title: "Cancle", style: .Default) {(action: UIAlertAction!) -> Void in
            }
            
            //alert.addTextFieldWithConfigurationHandler {(textField: UITextField!) -> Void in
            //}
            
            alert.addAction(saveAction)
            alert.addAction(cancelAction)
            
            presentViewController(alert, animated: true, completion: nil)
            
        }
        
        //ฟังก์ชั่น Save Name
//        func saveName(name: String){ //save data ไว้ใน Core data
//            //1
//            let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
//            
//            let managedContext = appDelegate.managedObjectContext!
//            
//            //2
//            let entity = NSEntityDescription.entityForName("Entity1", inManagedObjectContext: managedContext)
//            
//            let item = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
//            
//            //3
//            item.setValue(name, forKey: "name")
//            
//            //4
//            var error: NSError?
//            if !managedContext.save(&error){
//                println("Could not save \(error), \(error?.userInfo)")
//            }
//            
//            //5
//            nameArray.append(item)
//            
//        }
//    func savePrice(price: String){ //save data ไว้ใน Core data
//        //1
//        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
//        
//        let managedContext = appDelegate.managedObjectContext!
//        
//        //2
//        let entity = NSEntityDescription.entityForName("Entity3", inManagedObjectContext: managedContext)
//        
//        let item = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
//        
//        //3
//        item.setValue(price, forKey: "price")
//        
//        //4
//        var error: NSError?
//        if !managedContext.save(&error){
//            println("Could not save \(error), \(error?.userInfo)")
//        }
//        
//        //5
//        Price.append(item)
//        
//    }
//    func saveAmount(amount: Int){ //save data ไว้ใน Core data
//        //1
//        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
//        
//        let managedContext = appDelegate.managedObjectContext!
//        
//        //2
//        let entity = NSEntityDescription.entityForName("Entity2", inManagedObjectContext: managedContext)
//        
//        let item = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
//        
//        //3
//        item.setValue(amount, forKey: "amount")
//        
//        //4
//        var error: NSError?
//        if !managedContext.save(&error){
//            println("Could not save \(error), \(error?.userInfo)")
//        }
//        
//        
//        
//        //5
//        nameArray.append(item)
//        
//    }
    
    
        // MAEK: UITableViewDataSource
        //    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //        return items.count
        //    }
        //
        //    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        //
        //        //cell.textLabel!.text = items[indexPath.row] --> ในตอนแรกใช้อาเรย์  String
        //
        //        let item = items[indexPath.row] //เปลี่ยนเป็นมาใช้ NSManagedObject
        //        cell.textLabel!.text = item.valueForKey("name") as String?
        //
        //        return cell
        //    }
        
        override func viewWillAppear(animated: Bool) { //ให้ข้อมูลที่อยู่ใน Core data  แสดงขึ้นมา
            super.viewDidAppear(animated)
            
            //1
//            let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
//            
//            let managedContext = appDelegate.managedObjectContext!
//            
//            //2
//            let fetchRequest = NSFetchRequest(entityName: "Item")
//            
//            //3
//            var error: NSError?
//            
//            let fetchedResults = managedContext.executeFetchRequest(fetchRequest, error: &error) as [NSManagedObject]?
//            
//            if let results = fetchedResults{
//                nameArray = results
//                
//            } else{
//                println("Could not detch \(error) , \(error!.userInfo)")
//            }
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            //title = "\"Stocks\""
            //tableView.registerClass(UITableViewCell.self,forCellReuseIdentifier: "Cell")
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
}

