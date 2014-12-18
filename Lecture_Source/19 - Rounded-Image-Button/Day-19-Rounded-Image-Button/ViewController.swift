//
//  ViewController.swift
//  Day-19-Rounded-Image-Button
//
//  Created by Justin Mitchel on 11/25/14.
//  Copyright (c) 2014 Coding For Entrepreneurs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageURLString = "http://www.wideeyedtours.com/wp-content/uploads/2011/05/Page-25-Beach-Breaks-620x348.jpg"
        let url = NSURL(string: imageURLString)
        let imageData = NSData(contentsOfURL: url!)
        let image = UIImage(data:imageData!)
        
        
        let imageView = UIImageView(frame: CGRectMake(50, 50, 200, 200))
        imageView.image = image
        
        imageView.layer.borderWidth = 1.0
        imageView.layer.borderColor = UIColor.blackColor().CGColor
        imageView.layer.cornerRadius = imageView.frame.width / 16.0
        imageView.clipsToBounds = true
        imageView.contentMode = UIViewContentMode.ScaleAspectFill
        imageView.userInteractionEnabled = true
        
        let imageTappedRecognizer = UITapGestureRecognizer(target: self, action: "imageTapped:")
        imageTappedRecognizer.numberOfTapsRequired = 1
        imageTappedRecognizer.numberOfTouchesRequired = 1
        
        imageView.addGestureRecognizer(imageTappedRecognizer)
        
        self.view.addSubview(imageView)
        // imageView.contentMode = UIViewContentMode.ScaleAspectFill

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func imageTapped(sender: UITapGestureRecognizer!) {
        // println(sender)
        println("image tapped!")
        // self.performSegueWithIdentifier("sendSegue", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

