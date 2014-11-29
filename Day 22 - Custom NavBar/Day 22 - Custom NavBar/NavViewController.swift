//
//  NavViewController.swift
//  Day 22 - Custom NavBar
//
//  Created by Justin Mitchel on 11/28/14.
//  Copyright (c) 2014 Coding For Entrepreneurs. All rights reserved.
//

import UIKit

class NavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let navBar = self.navigationBar
        
        navBar.tintColor = UIColor.redColor()
        navBar.barTintColor = UIColor(red: 85/255.0, green: 85/255.0, blue: 85/255.0, alpha: 1.0)
        // navBar.barTintColor = UIColor.greenColor()
        navBar.backgroundColor = UIColor.redColor()
        navBar.translucent = false
        
        navBar.topItem!.title  = "Anothe title"
        self.navigationItem.title = "View Title"
        
        let title = UILabel()
        title.text = "Some Title"
        title.textAlignment = .Left
        title.textColor = .whiteColor()
        title.sizeToFit()
        
        navBar.topItem!.titleView = title
        
        let backbtn = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navBar.topItem?.backBarButtonItem = backbtn
        navBar.topItem!.leftItemsSupplementBackButton = true
        
        //        let barbtn = UIBarButtonItem(title: "NoStory", style: UIBarButtonItemStyle.Plain, target: self, action: "showView:")
        //        navBar.topItem!.leftItemsSupplementBackButton = true
        //        navBar.topItem?.leftBarButtonItems = [barbtn]
        
        let barImg = UIImage(named: "email")
        let barbtn2 = UIBarButtonItem(image: barImg!, style: UIBarButtonItemStyle.Plain, target: self, action: "showView:")
        navBar.topItem?.leftBarButtonItems = [barbtn2]
        // Do any additional setup after loading the view.
    }
    
    override func pushViewController(viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: animated)
        let barImg = UIImage(named: "email")
        let barbtn2 = UIBarButtonItem(image: barImg!, style: UIBarButtonItemStyle.Plain, target: self, action: "showView:")
        let backbtn = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        self.topViewController.navigationItem.backBarButtonItem = backbtn
        self.topViewController.navigationItem.leftItemsSupplementBackButton = true
        self.topViewController.navigationItem.leftBarButtonItems = [barbtn2]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        func showView(sender:AnyObject) {
            println("showing..")
            let vc = NoStoryViewController()
            self.showViewController(vc, sender: self)
            // self.popToRootViewControllerAnimated(true)
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
