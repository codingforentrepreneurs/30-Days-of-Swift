//
//  ViewController.swift
//  Day 19 - Alamofire
//
//  Created by Justin Mitchel on 11/24/14.
//  Copyright (c) 2014 Coding For Entrepreneurs. All rights reserved.
//

import UIKit
import Alamofire



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let params = [
            "foo": "bar",
            "baz": ["a", 1],
            "qux": [
                "x": 1,
                "y": 2,
                "z": 3
            ]
        ]
        
//        Alamofire.request(.POST, "http://httpbin.org/get", parameters=params)
//            .authenticate(user: user, password: password)
        
        Alamofire.request(.GET, "http://httpbin.org/get")
            .response { (request, response, data, error) in
                 println(request)
                 println(response)
                 println(error)
        }
            .responseJSON { (request, response, JSON, error) in
                println(JSON)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

