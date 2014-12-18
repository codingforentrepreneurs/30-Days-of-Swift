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
    let menuItems = ["burger", "fajitias", "kabob", "meal1", "nachos", "pizza", "pizza2", "steak", "taco", "burger", "fajitias", "kabob", "meal1", "nachos", "pizza", "pizza2", "steak", "taco", "burger", "fajitias", "kabob", "meal1", "nachos", "pizza", "pizza2", "steak", "taco", "burger", "fajitias", "kabob", "meal1", "nachos", "pizza", "pizza2", "steak", "taco", "burger", "fajitias", "kabob", "meal1", "nachos", "pizza", "pizza2", "steak", "taco"]
    override func viewDidLoad() {
        super.viewDidLoad()
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
        
        self.collection = UICollectionView(frame: CGRectMake(0, 0, self.view.frame.width, self.view.frame.height), collectionViewLayout: layout)
        
        self.collection!.delegate = self
        self.collection!.dataSource = self
        self.collection!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        self.view.addSubview(self.collection!)
        
        // Do any additional setup after loading the view.
    }

    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as UICollectionViewCell
        cell.backgroundColor = UIColor.redColor()
        
        let imgV = UIImageView(frame: cell.frame)
        imgV.image = UIImage(named: menuItems[indexPath.row])
        imgV.contentMode = UIViewContentMode.ScaleAspectFill
        imgV.clipsToBounds = true
        
        cell.backgroundView = imgV
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
