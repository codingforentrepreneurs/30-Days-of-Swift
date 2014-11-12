//
//  ViewController.swift
//  Day 7
//
//  Created by Justin Mitchel on 11/11/14.
//  Copyright (c) 2014 Coding For Entrepreneurs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var urlString = "http://i2.cdn.turner.com/cnn/dam/assets/130530161523-100-beaches-crane-beach-horizontal-gallery.jpg"

    override func viewDidLoad() {
        super.viewDidLoad()
        var url = NSURL(string: urlString)
        var imageData = NSData(contentsOfURL: url!)
        var image = UIImage(data: imageData!)
        var imageView = UIImageView(image: image!)
        imageView.frame = CGRectMake(20, 50, self.view.frame.width-40, 250)
        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        self.view.addSubview(imageView)
        
        var url2 = NSURL(string: urlString)
        var imageData2 = NSData(contentsOfURL: url2!)
        var image2 = UIImage(data: imageData2!)
        var imageView2 = UIImageView(image: image2!)
        imageView2.frame = CGRectMake(20, 350, self.view.frame.width-40, 250)
        imageView2.contentMode = UIViewContentMode.ScaleAspectFit
        self.view.addSubview(imageView2)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

