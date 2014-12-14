//
//  ViewController.swift
//  Day 23: Animate
//
//  Created by Justin Mitchel on 12/2/14.
//  Copyright (c) 2014 Coding For Entrepreneurs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let button2 = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let box = UIView()
        box.frame = CGRectMake(0, 50, 50, 50)
        box.backgroundColor = UIColor.blackColor()
        
        self.view.addSubview(box)
        
//        UIView.animateWithDuration(2.0, animations: { () -> Void in
//            box.frame = CGRectMake(self.view.frame.width - 100, 50, 100, 50)
//            box.backgroundColor = UIColor.greenColor()
//        })
        
        
        let loadingBar = UIView()
        loadingBar.frame = CGRectMake(0-10, 150, 10, 10)
        loadingBar.backgroundColor = UIColor.blueColor()
        
        self.view.addSubview(loadingBar)
        
//        UIView.animateWithDuration(1.2, animations: { () -> Void in
//            loadingBar.frame = CGRectMake(0 - 10, 150, self.view.frame.width + 10, 10)
//        })
        
        self.button2.frame = CGRectMake(20, 350, self.view.frame.width - 40, 50)
        self.button2.backgroundColor = UIColor.blueColor()
        self.button2.setTitle("Button 2", forState: UIControlState.Normal)
        self.button2.alpha = 0.0
        self.view.addSubview(button2)
        
        UIView.animateWithDuration(2.2, animations: { () -> Void in
            loadingBar.frame = CGRectMake(0 - 10, 150, self.view.frame.width + 10, 10)
//            box.frame = CGRectMake(self.view.frame.width - 100, 50, 100, 50)
//            box.backgroundColor = UIColor.greenColor()
            self.button2.alpha = 1.0
        }) { (Bool) -> Void in
            let label = UILabel()
            label.frame = CGRectMake(0, 250, self.view.frame.width, 50)
            label.text = "Loaded"
            label.textAlignment = NSTextAlignment.Center
            self.showData()
            self.view.addSubview(label)
            // loadingBar.backgroundColor = UIColor.grayColor()
            loadingBar.removeFromSuperview()
        }
        
        let animationOptions = UIViewAnimationOptions.CurveEaseInOut | UIViewAnimationOptions.Repeat | UIViewAnimationOptions.Autoreverse
//        UIView.animateWithDuration(2.0, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 10.4, options:animationOptions, animations: { () -> Void in
//            box.frame = CGRectMake(self.view.frame.width/2 - 100, 50, 100, 50)
//        }, completion: nil)
        
        
        UIView.animateWithDuration(2.0, delay: 0.0, options: animationOptions, animations: { () -> Void in
            box.frame = CGRectMake(self.view.frame.width/2 - 100, 50, 100, 50)
        }, completion: nil)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func showData(){
        let button = UIButton()
        button.frame = CGRectMake(0, 300, self.view.frame.width, 50)
        button.backgroundColor = UIColor.redColor()
        button.setTitle("Button", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
        
    }
    
    func buttonPressed(sender:AnyObject) {
        let sentItem: UIButton = sender as UIButton
        
        if (sentItem.touchInside) {
            println("button pressed")
        }
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

