//
//  ViewController.swift
//  Exam1_55011212150
//
//  Created by Student on 10/10/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate{
   //UITableViewDataSource
    @IBOutlet weak var tableView: UITableView!
    let cellIdentifier = "CellIdentifier"
    var percent = [3,5,10]
    var tableData = ["3.jpg","5.jpg","10.jpeg"]
    var tableData2 = ["Price Up 3% : Profit ","Price Up 5% : Profit ","Price Up 10% : Profit"]

    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var volume: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var textVolume: UITextField!
    @IBOutlet weak var textPrice: UITextField!
    @IBOutlet weak var textTotal: UITextField!
    var tupleNVP = (volume: 0.0,Price:0.0,total:0.0);
    var name2 = [String]();
    
    
    @IBAction func total(sender: AnyObject){
        
        //name2 += textName.text;
        tupleNVP.volume = Double((textVolume.text as NSString).doubleValue)
        tupleNVP.Price = Double((textPrice.text as NSString).doubleValue)
        tupleNVP.total = tupleNVP.volume * tupleNVP.Price;
        textTotal.text = String(format: "%0.0f" , tupleNVP.total)

    }
    
   func percentTotal() -> (three:Double,five:Double,ten:Double){

        tupleNVP.volume = Double((textVolume.text as NSString).doubleValue)
        tupleNVP.Price = Double((textPrice.text as NSString).doubleValue)
        tupleNVP.total = tupleNVP.volume * tupleNVP.Price;
        textTotal.text = String(format: "%0.0f" , tupleNVP.total)
        var three =  tupleNVP.volume * (tupleNVP.Price / 3 * 100)
        var five  = tupleNVP.volume * (tupleNVP.Price / 5 * 100)
        var ten = tupleNVP.volume * (tupleNVP.Price / 10 * 100)
        return (three,five,ten)
        
    }
    func numberOfSectionsTnTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView!,numberOfRowsInSection section: Int) -> Int{
        return percent.count;
    }
    

    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell = tableView.dequeueReusableCellWithIdentifier(self.cellIdentifier) as UITableViewCell
        var percent2 = percentTotal()
        
        cell.textLabel!.text = self.tableData2[indexPath.row]
        //cell.detailTextLabel!.text = String(format:"Profit : %0.2f)",percent2)
        var imageName = UIImage(named: tableData[indexPath.row])
        cell.imageView!.image = imageName
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.registerClass(UITableViewCell.self,forCellReuseIdentifier: self.cellIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

