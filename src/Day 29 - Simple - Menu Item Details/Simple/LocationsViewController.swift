//
//  LocationsViewController.swift
//  Simple
//
//  Created by Justin Mitchel on 12/17/14.
//  Copyright (c) 2014 Coding for Entrepreneurs. All rights reserved.
//

import UIKit

class LocationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel(frame: CGRectMake(0, 20, self.view.frame.width, 50))
        label.text = "Baja Fish Tacos"
        label.textAlignment = .Center
        
        let hoursLabel = UILabel(frame: CGRectMake(0, 70, self.view.frame.width, 50))
        hoursLabel.text = LocationInfo().getGeneralHours()
        hoursLabel.textAlignment = .Center
        
        let phoneLabel = UILabel(frame: CGRectMake(0, 120, self.view.frame.width, 50))
        phoneLabel.text = LocationInfo().getPhone()
        phoneLabel.textAlignment = .Center
        
        
        let websiteLabel = UILabel(frame: CGRectMake(0, 170, self.view.frame.width, 50))
        websiteLabel.text = "\(LocationInfo().getWesiteURL())"
        websiteLabel.textAlignment = .Center
        
        self.view.addSubview(label)
        self.view.addSubview(phoneLabel)
        self.view.addSubview(hoursLabel)
        self.view.addSubview(websiteLabel)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
