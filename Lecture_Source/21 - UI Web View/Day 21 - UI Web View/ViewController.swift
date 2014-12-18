//
//  ViewController.swift
//  Day 21 - UI Web View
//
//  Created by Justin Mitchel on 11/26/14.
//  Copyright (c) 2014 Coding For Entrepreneurs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let offset = CGFloat(20.0)
        let width = CGFloat(self.view.frame.width)
        let finalWidth = width - (2 * offset)
        
        
        let button = UIButton(frame: CGRectMake(offset, 50, finalWidth, 50))
        button.backgroundColor = UIColor.blackColor()
        button.setTitle("Open", forState: UIControlState.Normal)
        button.addTarget(self, action: "openSafari:", forControlEvents: UIControlEvents.TouchUpInside)
        

        let height = CGFloat(315)
        
        let embedCode = "<html><head><style>body {margin:0;padding:0;} iframe {margin:0;padding:0;}</style></head><body><iframe width=\"\(finalWidth)\" height=\"\(height)\" src=\"http://www.youtube.com/embed/KBdeK_uLfIE\" frameborder=\"0\" allowfullscreen></iframe></body></html>"
        
        let webView = UIWebView(frame: CGRectMake(offset, 150, finalWidth, height))
        webView.loadHTMLString(embedCode, baseURL: nil)
        webView.delegate = self
        webView.backgroundColor = UIColor.blackColor()
        
        let htmlCode2 = "<html><head><style>body {margin:0;padding:0;} iframe {margin:0;padding:0;}</style></head><body><h1>Hello World</h1></body></html>"
        let webView2 = UIWebView(frame: CGRectMake(offset, 150 + height + 20, finalWidth,100))
        webView2.loadHTMLString(htmlCode2, baseURL: nil)
        webView2.delegate = self
        
        self.view.addSubview(button)
        self.view.addSubview(webView)
        self.view.addSubview(webView2)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func openSafari(sender: AnyObject) {
        let theURLString = "https://www.youtube.com/watch?v=KBdeK_uLfIE"
        let url = NSURL(string: theURLString)
        UIApplication.sharedApplication().openURL(url!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

