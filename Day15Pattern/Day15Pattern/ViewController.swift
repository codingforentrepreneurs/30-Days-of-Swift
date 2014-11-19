//
//  ViewController.swift
//  Day15Pattern
//
//  Created by Justin Mitchel on 11/18/14.
//  Copyright (c) 2014 Coding For Entrepreneurs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let urlString = "https://cdn2.iconfinder.com/data/icons/free-3d-printer-icon-set/256/Model.png"
        let url2String = "http://psdhunter.com/psds/3141-thumb-download-for-free-a-vertical-lines-pattern-free-png.png"
        
        let url = NSURL(string: url2String)
        let data = NSData(contentsOfURL: url!)
        let image = UIImage(data: data!)
        let theColor = UIColor(patternImage: image!)
        self.view.backgroundColor = theColor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

