//
//  ViewController.swift
//  miniTest
//
//  Created by student on 11/14/2557 BE.
//  Copyright (c) 2557 student. All rights reserved.
//

import UIKit
class ViewController: UIViewController,UICollisionBehaviorDelegate  {
    var square: UIView!
    let snowman: UIImageView!
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    var collision: UICollisionBehavior!
    var firstContact = false
    var snap: UISnapBehavior!
    var poin = 0;
    var poin2 = 0;
    @IBOutlet weak var ans: UILabel!
    @IBOutlet weak var poinCenter: UILabel!
    
    @IBAction func star(sender: AnyObject) {
        for loopNumber in 0...30{

            let duration : NSTimeInterval = 6.0
            let delay = 0.0
            let options = UIViewAnimationOptions.CurveLinear
            
            let size : CGFloat = CGFloat(Int(rand()) % 20 + 10.0)
            let yPosition : CGFloat = CGFloat(Int(rand()) % 2500 + 10.0)
            
            let star = UIImageView()
            star.image = UIImage(named: "star_PNG1585.png")
            star.frame = CGRectMake(yPosition,20, size, size)
            self.view.addSubview(star)
            
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                star.frame = CGRectMake(yPosition,800, size, size)
                }, completion: { animationFinished in
                    star.removeFromSuperview()
            })
        }
    }

    @IBAction func snow(sender: AnyObject) {
        for loopNumber in 0...40{
            
            let duration : NSTimeInterval = 6.0
            let delay = 0.0

            let options = UIViewAnimationOptions.CurveLinear
            
            let size : CGFloat = CGFloat(Int(rand()) % 30 + 10.0)
            let yPosition : CGFloat = CGFloat(Int(rand()) % 2500 + 10.0)
            
            let snow = UIImageView()
            snow.image = UIImage(named: "O.snow2.png")
            snow.frame = CGRectMake(yPosition,20, size, size)
            self.view.addSubview(snow)
            
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                snow.frame = CGRectMake(yPosition,800, size, size)
                }, completion: { animationFinished in
                    snow.removeFromSuperview()
            })
            
        }
        
    }
    @IBAction func snowmanAction(sender: AnyObject) {
        let snowman = UIImageView()
        snowman.image = UIImage(named: "Snowman.png")
        let yPosition : CGFloat = CGFloat(Int(rand()) % 300 + 10.0)
        snowman.frame = CGRectMake(yPosition,20,100,100)
        self.view.addSubview(snowman)
        
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [snowman])
        animator.addBehavior(gravity)
        
        
        let barrier = UIView(frame: CGRect(x:0,y:300,width:130,height:20))
        let barrier2 = UIView(frame: CGRect(x:240,y:400,width:140,height:20))
        collision = UICollisionBehavior(items: [snowman])
        collision.translatesReferenceBoundsIntoBoundary = true
        collision.addBoundaryWithIdentifier("barrier", forPath: UIBezierPath(rect: barrier.frame))
        collision.addBoundaryWithIdentifier("barrier2", forPath: UIBezierPath(rect: barrier2.frame))
        animator.addBehavior(collision)
        collision.collisionDelegate = self
        
        let itemBehaviour = UIDynamicItemBehavior(items: [snowman])
        itemBehaviour.elasticity = 0.7
        animator.addBehavior(itemBehaviour)
        self.poin2 = self.poin2+1;
        
       
    }
    func collisionBehavior(behavior: UICollisionBehavior!, beganContactForItem item: UIDynamicItem!, withBoundaryIdentifier identifier: NSCopying!, atPoint p: CGPoint) {
        println("Boundary contact occurred - \(identifier)")
        
        let duration : NSTimeInterval = 6.0
        let delay = 0.0
        let options = UIViewAnimationOptions.CurveLinear
        
        let size : CGFloat = CGFloat(Int(rand()) % 10 + 10.0)
        let yPosition : CGFloat = CGFloat(Int(rand()) % 2500 + 10.0)
        
        let coloredSquare = UIView();
        coloredSquare.backgroundColor = UIColor.cyanColor()
        coloredSquare.frame = CGRectMake(yPosition,50, size,size)
        self.view.addSubview(coloredSquare)
        
        UIView.animateWithDuration(duration, delay: delay, options: options,animations: {coloredSquare.backgroundColor = UIColor.yellowColor()
            coloredSquare.frame = CGRect(x: yPosition,y: 800, width: size, height: size)},
            completion: { animationFinished in coloredSquare.removeFromSuperview()
                self.poin = self.poin+1;
                self.poinCenter.text = String(self.poin);
                if(self.poin == 100 && self.poin2 <= 8){
                    self.ans.text = "You Luky You Win";
                }
                else if(self.poin == 100 && self.poin2 > 8){
                    self.ans.text = "You UnLuky You Lose";
                    
                }else{
                    
                }
        })
    }
    @IBAction func box(sender: AnyObject) {
        for loopNumber in 0...40{
            
            let duration : NSTimeInterval = 6.0
            let delay = 0.0
            let options = UIViewAnimationOptions.CurveLinear
            
            let size : CGFloat = CGFloat(Int(rand()) % 10 + 10.0)
            let yPosition : CGFloat = CGFloat(Int(rand()) % 2500 + 10.0)
            
            let coloredSquare = UIView();
            coloredSquare.backgroundColor = UIColor.orangeColor()
            coloredSquare.frame = CGRectMake(yPosition,50, size,size)
            self.view.addSubview(coloredSquare)
            
            UIView.animateWithDuration(duration, delay: delay, options: options,animations: {coloredSquare.backgroundColor = UIColor.greenColor()
                coloredSquare.frame = CGRect(x: yPosition,y: 800, width: size, height: size)},
                completion: { animationFinished in coloredSquare.removeFromSuperview()
            })


        }

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(poin == 100 && poin2 <= 10){
            self.ans.text = "You Luky You Win";
        }
        else if(poin == 100 && poin2 > 10){
            self.ans.text = "You UnLuky You Lose";
            
        }else{
            
        }
        let barrier = UIView(frame: CGRect(x:0,y:300,width:130,height:20))
        barrier.backgroundColor = UIColor.brownColor()
        view.addSubview(barrier)
        
        
        let barrier2 = UIView(frame: CGRect(x:240,y:400,width:140,height:20))
        barrier2.backgroundColor = UIColor.brownColor()
        view.addSubview(barrier2)
        
        let  tree = UIImageView()
        tree.image = UIImage(named: "Large_Transparent_Christmas_Tree_with_Ornaments_and_Candy_Canes_Clipart.png")
        tree.frame = CGRectMake(0,350,250,300)
        self.view.addSubview(tree)


    }
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
//        if(snap != nil){
//            animator.removeBehavior(snap)
//            
//        }
//        
//        let touch = touches.anyObject() as UITouch
//        snap = UISnapBehavior(item: snowman, snapToPoint: touch.locationInView(view))
//        animator.addBehavior(snap)
//    }
    
    
}

