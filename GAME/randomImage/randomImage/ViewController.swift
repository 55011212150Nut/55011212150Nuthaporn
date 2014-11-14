//
//  ViewController.swift
//  randomImage
//
//  Created by student on 9/26/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    var i=0 , j=0 , k=0
    
    @IBAction func button1(sender: AnyObject) {
        i++
        label1.text = String(i)
    }
    
    @IBAction func button2(sender: AnyObject) {
        j++
        label2.text = String(j)
    }
    
    @IBAction func button3(sender: AnyObject) {
        k++
        label3.text = String(k)
    }
    
    @IBAction func clear(sender: AnyObject) {
        i=0
        j=0
        k=0
        label1.text = String(0)
        label2.text = String(0)
        label3.text = String(0)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

