//
//  ViewController.swift
//  CoreImageView
//
//  Created by student on 9/26/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fileURL = NSBundle.mainBundle().URLForResource("image", withExtension: "png")
        
        
        //beginImage = CIImage(contentsOfURL: fileURL)
       // filter = CIFilter(name: "CISepiaTone")
        //filter.setVaue(beg)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    
    @IBAction func loadPhoto(sender: AnyObject) {
        let pickerC = UIImagePickerController()
        //pickerC.delegate = self
        self.presentViewController(pickerC, animated: true, completion: nil)
        
    }
    
    
    @IBAction func savePhoto(sender: AnyObject) {
    
    }

    

}

