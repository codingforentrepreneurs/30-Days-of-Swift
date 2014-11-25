//
//  ViewController.swift
//  Day 20 - Scroll View
//
//  Created by Justin Mitchel on 11/25/14.
//  Copyright (c) 2014 Coding For Entrepreneurs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel(frame: CGRectMake(10, 50, self.view.frame.width-20, 50))
        label1.text = "Hi there"
        label1.backgroundColor = UIColor.blackColor()
        label1.textColor = UIColor.whiteColor()
        
        
        let label2 = UILabel(frame: CGRectMake(10, 120, self.view.frame.width-20, 50))
        label2.text = "Label 2"
        label2.backgroundColor = UIColor.blackColor()
        label2.textColor = UIColor.whiteColor()
        
        let label3 = UILabel(frame: CGRectMake(10, 920, self.view.frame.width-20, 50))
        label3.text = "Label 2"
        label3.backgroundColor = UIColor.blackColor()
        label3.textColor = UIColor.whiteColor()
        
        let scrollView2 = UIScrollView(frame: CGRectMake(0, 970, self.view.frame.width, 100))
        
        let label4 = UILabel(frame: CGRectMake(10, 200, self.view.frame.width-20, 50))
        label4.text = "Hello there again"
        label4.backgroundColor = UIColor.blackColor()
        label4.textColor = UIColor.whiteColor()
        scrollView2.contentSize = CGSize(width: self.view.frame.width, height: 300)
        scrollView2.backgroundColor = UIColor.greenColor()
        scrollView2.addSubview(label4)
        
        let scrollView = UIScrollView(frame: CGRectMake(0, 0, self.view.frame.width, self.view.frame.height))
        scrollView.addSubview(label2)
        scrollView.addSubview(label1)
        scrollView.addSubview(label3)
        scrollView.addSubview(scrollView2)
        scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height * 2.0)
        
        
        
        
        // self.view.addSubview(label1)
        self.view.addSubview(scrollView)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

