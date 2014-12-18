//
//  MenuViewController.swift
//  Simple
//
//  Created by Justin Mitchel on 12/15/14.
//  Copyright (c) 2014 Coding for Entrepreneurs. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    var collection: UICollectionView?
    var menuItems = [String]()
    var menuArrayDict = [[String:AnyObject]]()
    let barTintColor = UIColor.blackColor()
    let tintColor = UIColor.grayColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // set navigation controller color + tab bar controller color
        self.navigationController?.navigationBar.barTintColor = self.barTintColor
        self.navigationController?.navigationBar.tintColor = self.tintColor
        self.tabBarController?.tabBar.barTintColor = self.barTintColor
        self.tabBarController?.tabBar.tintColor = self.tintColor
        
        let label = UILabel()
        label.text = "Simple"
        label.textColor = .whiteColor()
        label.textAlignment = .Center
        label.sizeToFit()
        label.font = UIFont.systemFontOfSize(20.0)
        self.navigationItem.titleView = label
        
        self.menuItems = LocationInfo().getMenuImages()
        self.menuArrayDict = LocationInfo().getMenuDict()
        
        
        let imageString = menuItems[0]
        let image = UIImage(named: imageString)
        let imageView = UIImageView(image: image)
        imageView.frame = CGRectMake(0, 0, self.view.frame.width, 250)
        imageView.contentMode = UIViewContentMode.ScaleAspectFill
        imageView.clipsToBounds = true
        
        self.view.addSubview(imageView)
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//        layout.itemSize = CGSize(width: self.view.frame.width/3.0 - 10, height: self.view.frame.width/3.0 - 10)
        let navH = self.navigationController!.navigationBar.frame.height + 10
        let tabH = self.tabBarController!.tabBar.frame.height
        
        self.collection = UICollectionView(frame: CGRectMake(0, navH, self.view.frame.width, self.view.frame.height - navH - tabH), collectionViewLayout: layout)
        
        self.collection!.delegate = self
        self.collection!.dataSource = self
        self.collection!.registerClass(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        self.view.addSubview(self.collection!)
        
        // Do any additional setup after loading the view.
    }

    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as CustomCollectionViewCell
        cell.imageView.image = UIImage(named: menuArrayDict[indexPath.row]["imageStringName"] as String)
        cell.textView.text = menuArrayDict[indexPath.row]["title"] as? String
        return cell
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 2.5
    }
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath:NSIndexPath) -> CGSize {
        
        return CGSize(width: self.view.frame.width, height: self.view.frame.width/3.0 - 5)
    }
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        println(indexPath.row)
        let vc = MenuItemViewController()
        vc.itemTitle =  menuArrayDict[indexPath.row]["title"] as String
        vc.imageString = menuArrayDict[indexPath.row]["imageStringName"] as String
        vc.itemDescription = menuArrayDict[indexPath.row]["description"] as String
    
        
        self.navigationController?.showViewController(vc, sender: self)
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
