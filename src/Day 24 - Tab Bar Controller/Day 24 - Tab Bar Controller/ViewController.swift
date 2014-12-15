//
//  ViewController.swift
//  Day 24 - Tab Bar Controller
//
//  Created by Justin Mitchel on 12/14/14.
//  Copyright (c) 2014 Coding for Entrepreneurs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRectMake(0, 150, self.view.frame.width, 50))
        label.text = "Hello"
        label.textColor = UIColor.blackColor()
        
        self.view.addSubview(label)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

