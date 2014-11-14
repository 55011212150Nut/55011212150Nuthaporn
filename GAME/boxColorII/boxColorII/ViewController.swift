//
//  ViewController.swift
//  boxColorII
//
//  Created by student on 11/7/2557 BE.
//  Copyright (c) 2557 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let coloredSquare = UIView()
        coloredSquare.backgroundColor = UIColor.blueColor()
        coloredSquare.frame = CGRect(x:0,y:120,width:50,height:50)
        self.view.addSubview(coloredSquare)
        
        //let options = UIViewAnimationOptions.Repeat
        //let options = UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.CurveEaseInOut
        let options = UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.CurveEaseInOut
        
        UIView.animateWithDuration(1.0, delay: 0.0, options: options, animations: {
            
            coloredSquare.backgroundColor = UIColor.redColor()
            coloredSquare.frame = CGRect(x: 375-50,y:120,width:50,height:50)
            
            }, completion: nil)
        }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

