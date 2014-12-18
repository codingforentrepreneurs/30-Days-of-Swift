//
//  LocationInfo.swift
//  Simple
//
//  Created by Justin Mitchel on 12/17/14.
//  Copyright (c) 2014 Coding for Entrepreneurs. All rights reserved.
//

import UIKit

class LocationInfo: NSObject {
   var finalImageArray = [String]()
   var hours = "10:00am - 10:00pm"
   var phone = "949-555-5555"
    var website = "http://www.codingforentrepreneurs.com/"
   var initialImageStrings = [123, "abc", "burger", "fajitias", "kabob", "meal1", "nachos", "pizza", "pizza2", "steak", "taco", "burger", "fajitias", "kabob", "meal1", "nachos", "pizza", "pizza2", "steak", "taco", "burger", "fajitias", "kabob", "meal1", "nachos", "pizza", "pizza2", "steak", "taco", "burger", "fajitias", "kabob", "meal1", "nachos", "pizza", "pizza2", "steak", "taco", "burger", "fajitias", "kabob", "meal1", "nachos", "pizza", "pizza2", "steak", "taco"]
    
    var menuItems: Array<[String:AnyObject]> = [
        [
            "title": "Burger",
            "description": "A burger",
            "imageStringName": "burger",
            "id": 1,
        ],
        [
            "title": "Kabob",
            "description": "A kabob",
            "imageStringName": "kabob",
            "id": 2,
        ],
        [
            "title": "Meal 1",
            "description": "Meal 1",
            "imageStringName": "meal1",
            "id": 3,
        ],
        [
            "title": "Pizza",
            "description": "A Pizza",
            "imageStringName": "pizza",
            "id": 4,
        ],
        [
            "title": "Pizza",
            "description": "A Pizza",
            "imageStringName": "pizza2",
            "id": 5,
        ],
        [
            "title": "Taco",
            "description": "A taco",
            "imageStringName": "taco",
            "id": 6,
        ],
        [
            "title": "Burger",
            "description": "A burger",
            "imageStringName": "burger",
            "id": 7,
        ],
        [
            "title": "Kabob",
            "description": "A kabob",
            "imageStringName": "kabob",
            "id": 8,
        ],
        [
            "title": "Meal 1",
            "description": "Meal 1",
            "imageStringName": "meal1",
            "id": 9,
        ],
        [
            "title": "Pizza",
            "description": "A Pizza",
            "imageStringName": "pizza",
            "id": 10,
        ],
        [
            "title": "Pizza",
            "description": "A Pizza",
            "imageStringName": "pizza2",
            "id": 11,
        ],
        [
            "title": "Taco",
            "description": "A taco",
            "imageStringName": "taco",
            "id": 12,
        ],
        
        
    ]
    
    var addresses: Array<[String:AnyObject]> = [
        [
            "title": "Costa Mesa Location",
            "address": "171 East 17th Street, Costa Mesa, CA 92627",
            "defaultPoint": true,
            "lat": 33.635977,
            "long": -117.920556,
            
        ],
        [
            "title": "Santa Ana Location",
            "address":  "3664 South Bristol St., Santa Ana, CA 92704",
            "defaultPoint": false,
            "lat": 33.698906,
            "long": -117.885619,
        ],
        [
            "title": "Anoter Location",
            "address":  "364 South Bristol St., Santa Ana, CA 92704",
            "defaultPoint": false,
            "lat": 33.798906,
            "long": -117.885619,
        ]
        
    ]
    
    required override init(){
        super.init()
        for item in menuItems {
            let itemAdd = item["imageStringName"] as? String
            if itemAdd != nil {
                self.addImageToArray(itemAdd!)
            }
        }
    }
    
    func getMenuDict() -> Array<[String:AnyObject]> {
        return self.menuItems
    }
    func getWesiteURL() -> NSURL {
        let url: NSURL = NSURL(string: self.website)!
        return url
    }
    
    func getGeneralHours() -> String {
        return self.hours
    }
    
    func getPhone() -> String {
        return self.phone
    }
    
    func getDefaultAddresses() -> Array<[String:AnyObject]> {
        return self.addresses
    }
    
    func getMenuImages() -> Array<String> {
        return self.finalImageArray
    }
    
    func addImageToArray(imageString:String) {
        let imageTest = UIImage(named:imageString)
        if imageTest != nil {
            self.finalImageArray.append(imageString)
        }
    }
}
