//
//  ViewController.swift
//  Day 16 - UIButton
//
//  Created by Justin Mitchel on 11/22/14.
//  Copyright (c) 2014 Coding For Entrepreneurs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBAction func doAction(sender: AnyObject) {
        self.textLabel.text = self.textField.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

