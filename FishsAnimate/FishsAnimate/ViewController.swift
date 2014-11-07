//
//  ViewController.swift
//  FishsAnimate
//
//  Created by student on 11/7/2557 BE.
//  Copyright (c) 2557 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func animateButtonPressend(sender: AnyObject) {
        
        for loopNumber in 0...10{
            

        
            let duration : NSTimeInterval = 1.0
            let delay = 0.0
            //let delay = NSTimeInterval (((Int(rand()) % 900)+100.0) / 100.0)
            let options = UIViewAnimationOptions.CurveLinear
            
            let size : CGFloat = CGFloat(Int(rand()) % 40 + 20.0)
            let yPosition : CGFloat = CGFloat(Int(rand()) % 200 + 20.0)
            
            let fish = UIImageView()
            fish.image = UIImage(named: "fish-fish.png")
            fish.frame = CGRectMake(0, yPosition, size, size)
            self.view.addSubview(fish)
        
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                fish.frame = CGRectMake(375-size, yPosition, size, size)
            }, completion: { animationFinished in
                 fish.removeFromSuperview()
            })
        
        }
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

