//
//  ViewController2.swift
//  animate
//
//  Created by Justin Mitchel on 11/28/14.
//  Copyright (c) 2014 Coding For Entrepreneurs. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    let boxView = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        self.boxView.frame = CGRectMake(0, 50, 20, 20)
        // self.boxView.alpha = 0.0
        self.boxView.backgroundColor = .redColor()
        self.boxView.userInteractionEnabled = true
        let gesture = UIGestureRecognizer(target: self, action: "didPress:")
        self.boxView.addGestureRecognizer(gesture)
        
        
        
        
        self.view.addSubview(boxView)
        UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.AllowUserInteraction | UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.boxView.frame = CGRectMake(0, 50, 250, 250)
            // self.boxView.alpha = 1.0
            self.boxView.userInteractionEnabled = true
            
            }) { (Bool) -> Void in
                let btn = UIButton()
                self.boxView.userInteractionEnabled = true
                btn.userInteractionEnabled = true
                btn.frame = CGRectMake(0, 0, self.boxView.frame.width, 50)
                btn.setTitle("Hide", forState: UIControlState.Normal)
                btn.backgroundColor = .greenColor()
                btn.addTarget(self, action: "hideAnimate:", forControlEvents: UIControlEvents.TouchUpInside)
                self.boxView.addSubview(btn)
        }

        // Do any additional setup after loading the view.
    }

    func didPress(){
        println("pressed")
    }
    
    func hideAnimate(sender: AnyObject){
        println("pressed")
        //        UIView.animateWithDuration(3.0, animations: { () -> Void in
        //            self.boxView.frame = CGRectMake(0, 0, 250, 250)
        //            self.boxView.alpha = 1.0
        //        })
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
