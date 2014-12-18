//
//  MenuItemViewController.swift
//  Simple
//
//  Created by Justin Mitchel on 12/17/14.
//  Copyright (c) 2014 Coding for Entrepreneurs. All rights reserved.
//

import UIKit

class MenuItemViewController: UIViewController {
    var itemTitle: String = ""
    var imageString: String = ""
    var itemDescription: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let label = UILabel()
        label.text = self.itemTitle
        label.textColor = .whiteColor()
        label.textAlignment = .Center
        label.sizeToFit()
        label.font = UIFont.systemFontOfSize(20.0)
        self.navigationItem.titleView = label
        
        
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        let image = UIImage(named: self.imageString)
        let imageV = UIImageView(image: image!)
        imageV.frame = CGRectMake(0, 0, self.view.frame.width, 250)
        imageV.contentMode = .ScaleAspectFill
        imageV.clipsToBounds = true
        
        self.view.addSubview(imageV)
        
        
        let titleLabel = UILabel(frame: CGRectMake(0, 260, self.view.frame.width, 50))
        titleLabel.text = self.itemTitle
        titleLabel.textAlignment = .Center
        
         let descriptionLabel = UILabel(frame: CGRectMake(0, 310, self.view.frame.width, 50))
        descriptionLabel.text = self.itemDescription
        descriptionLabel.textAlignment = .Center
        
        self.view.addSubview(titleLabel)
        self.view.addSubview(descriptionLabel)
        
        
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
