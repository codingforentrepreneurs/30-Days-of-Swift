//
//  ViewController.swift
//  animate
//
//  Created by Justin Mitchel on 11/28/14.
//  Copyright (c) 2014 Coding For Entrepreneurs. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    override func viewDidLoad() {
//        let coloredSquare = UIView()
//        coloredSquare.layer.borderWidth = 0.0
//        coloredSquare.layer.cornerRadius = 5.0
//        let duration = 1.0
//        let delay = 0.0
//        let options = UIViewAnimationOptions.CurveEaseInOut | UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.Repeat
//        let damping = 0.5 // damping ration "how much oscillation" inifitiny (0) to none (1)
//        let velocity = CGFloat(1.0)
//        
//        // set background color to blue
//        coloredSquare.backgroundColor = UIColor.blueColor()
//    
//        coloredSquare.frame = CGRectMake(0, 120, 50, 50)
//        self.view.addSubview(coloredSquare)
//       
//        
//       UIView.animateWithDuration(duration, delay: delay, options: options, animations: { () -> Void in
//        coloredSquare.backgroundColor = UIColor.redColor()
//        coloredSquare.frame = CGRect(x: self.view.frame.width-50, y: 120, width: 50, height: 50)
//       }) { (Bool) -> Void in
//        println(Bool)
//        }
//        
        
        for loopNumber in 0...50 {
            
            // set up some constants for the animation
            let duration : NSTimeInterval = 3.4
            let delay =  NSTimeInterval(Double(arc4random_uniform(4000)/225))
            println("\(arc4random_uniform(255)) - \(((Double(rand()) % 1900)+100)/2000)")
            let options = UIViewAnimationOptions.CurveLinear | UIViewAnimationOptions.Repeat | UIViewAnimationOptions.Autoreverse
            
            // set up some constants for the fish
            let size : CGFloat = CGFloat(Int(rand()) %  40) + 20.0
            let yPosition : CGFloat = CGFloat( Int(rand()) %  500) + 20.0
            let xPostion: CGFloat = CGFloat(Double(rand())) % self.view.frame.width
            
            let red = CGFloat(arc4random_uniform(255))/255.0
            let green = CGFloat(arc4random_uniform(255))/255.0
            let blue = CGFloat(arc4random_uniform(255))/255.0
            
            
            // create the fish and add it to the screen
            let coloredSquare = UIView()
            coloredSquare.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
            coloredSquare.frame = CGRectMake(xPostion, self.view.frame.height - size, size, size)
            
            coloredSquare.layer.borderWidth = 0.0
            coloredSquare.layer.cornerRadius = size/2.0
            coloredSquare.alpha = 0.5
            self.view.addSubview(coloredSquare)
            
            // define the animation
            
            UIView.animateWithDuration(duration, delay: delay, usingSpringWithDamping: 10.2, initialSpringVelocity: 1.48, options: options, animations: { () -> Void in
                // coloredSquare.frame = CGRectMake(xPostion, self.view.frame.height - size, size, size)
                coloredSquare.frame = CGRectMake(xPostion, 0-size * 2, size, size * 1.2)
                let red = CGFloat(arc4random_uniform(255))/255.0
                let green = CGFloat(arc4random_uniform(255))/255.0
                let blue = CGFloat(arc4random_uniform(255))/255.0
                coloredSquare.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
            }, completion: { (Bool) -> Void in
                coloredSquare.removeFromSuperview()
            })
            
//            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
//                
//                // move the fish
//                coloredSquare.frame = CGRectMake(xPostion, self.view.frame.height - size, size, size)
//                let red = CGFloat(arc4random_uniform(255))/255.0
//                let green = CGFloat(arc4random_uniform(255))/255.0
//                let blue = CGFloat(arc4random_uniform(255))/255.0
//                
//                
//                coloredSquare.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
//                }, completion: { animationFinished in
//                    
//                    // remove the fish
//                    coloredSquare.removeFromSuperview()
//                    
//            })
        }
        
        
        
        
       
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

