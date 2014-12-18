//
//  ViewController.swift
//  Day 17 - Segue
//
//  Created by Justin Mitchel on 11/23/14.
//  Copyright (c) 2014 Coding For Entrepreneurs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theTextField: UITextField!
    @IBAction func goToPage2(sender: AnyObject) {
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "page2" {
            let vc = segue.destinationViewController as PageTwoViewController
            vc.newPageTitle = self.theTextField.text
        }   else if segue.identifier == "page3" {
            let vc = segue.destinationViewController as PageTwoViewController
            vc.newPageTitle = "\(self.theTextField.text) and Hi there"
            
        }
    }


}

