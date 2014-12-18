//
//  ViewController.swift
//  Day 18 - Table View Details
//
//  Created by Justin Mitchel on 11/23/14.
//  Copyright (c) 2014 Coding For Entrepreneurs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var titleText: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        let navBarHeight = self.navigationController!.navigationBar.frame.height
        let label = UILabel(frame: CGRectMake(10, navBarHeight + 20, self.view.frame.width - 20, 50))
        label.text = self.titleText
        label.backgroundColor = UIColor.blackColor()
        label.textColor = UIColor.whiteColor()
        label.textAlignment = NSTextAlignment.Center
        self.view.addSubview(label)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

