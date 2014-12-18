//
//  LocationsViewController.swift
//  Simple
//
//  Created by Justin Mitchel on 12/17/14.
//  Copyright (c) 2014 Coding for Entrepreneurs. All rights reserved.
//

import UIKit

class LocationsViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource  {
    var collection: UICollectionView?
    var addresses = [[String:AnyObject]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addresses = LocationInfo().getDefaultAddresses()
        
        // updated font size for all
        let label = UILabel(frame: CGRectMake(0, 20, self.view.frame.width, 50))
        label.text = "Baja Fish Tacos"
        label.textAlignment = .Center
        label.font = UIFont.systemFontOfSize(20.0)
        
        let hoursLabel = UILabel(frame: CGRectMake(0, 70, self.view.frame.width, 50))
        hoursLabel.text = LocationInfo().getGeneralHours()
        hoursLabel.textAlignment = .Center
        hoursLabel.font = UIFont.systemFontOfSize(20.0)
        
        // changed from UILabel to UITextView so we can use "dataDetectorTypes"
        let phoneLabel = UITextView(frame: CGRectMake(0, 120, self.view.frame.width, 50))
        phoneLabel.text = LocationInfo().getPhone()
        phoneLabel.textAlignment = .Center
        phoneLabel.font = UIFont.systemFontOfSize(20.0)
        phoneLabel.editable = false
        phoneLabel.dataDetectorTypes = UIDataDetectorTypes.PhoneNumber
        
        // changed from UILabel to UITextView so we can use "dataDetectorTypes"
        let websiteLabel = UITextView(frame: CGRectMake(0, 170, self.view.frame.width, 50))
        websiteLabel.text = "\(LocationInfo().getWesiteURL())"
        websiteLabel.textAlignment = .Center
        websiteLabel.font = UIFont.systemFontOfSize(20.0)
        websiteLabel.editable = false
        websiteLabel.dataDetectorTypes = UIDataDetectorTypes.Link
        
        self.view.addSubview(label)
        self.view.addSubview(phoneLabel)
        self.view.addSubview(hoursLabel)
        self.view.addSubview(websiteLabel)
        
        
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        //        layout.itemSize = CGSize(width: self.view.frame.width/3.0 - 10, height: self.view.frame.width/3.0 - 10)
        // let navH = self.navigationController?.navigationBar.frame.height + 10
        let tabH = self.tabBarController!.tabBar.frame.height
        
        self.collection = UICollectionView(frame: CGRectMake(0, self.view.frame.height/3.0, self.view.frame.width, self.view.frame.height * 2/3.0 - tabH), collectionViewLayout: layout)
        
        self.collection!.delegate = self
        self.collection!.dataSource = self
        self.collection!.registerClass(LocationCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        self.view.addSubview(self.collection!)

        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
     // MARK: - Collection View
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as LocationCollectionViewCell
        cell.backgroundColor = UIColor.whiteColor()
        let address = addresses[indexPath.row]["address"] as String
        let phone = addresses[indexPath.row]["phone"] as String
        cell.textView.text = "\(address) \n\n\(phone)"
//        cell.imageView.image = UIImage(named: menuArrayDict[indexPath.row]["imageStringName"] as String)
//        cell.textView.text = menuArrayDict[indexPath.row]["title"] as? String
        return cell
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.addresses.count
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
//        let vc = MenuItemViewController()
//        vc.itemTitle =  menuArrayDict[indexPath.row]["title"] as String
//        vc.imageString = menuArrayDict[indexPath.row]["imageStringName"] as String
//        vc.itemDescription = menuArrayDict[indexPath.row]["description"] as String
//        
//        
//        self.navigationController?.showViewController(vc, sender: self)
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
