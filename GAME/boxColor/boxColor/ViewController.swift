//
//  ViewController.swift
//  boxColor
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
        
        UIView.animateWithDuration(1.0, animations: {coloredSquare.backgroundColor = UIColor.redColor()
           coloredSquare.frame = CGRect(x: 375-50,y:120,width:50,height:50)
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

