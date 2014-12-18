//
//  ContactUsViewController.swift
//  Simple
//
//  Created by Justin Mitchel on 12/17/14.
//  Copyright (c) 2014 Coding for Entrepreneurs. All rights reserved.
//

import UIKit

class ContactUsViewController: UIViewController, UIWebViewDelegate {
 
    
    override func viewWillAppear(animated: Bool) {
        let height = self.view.frame.height-60
        
        let embedForm = "<div id=\"wufoo-z1t2hcur1lrk0wc\"></div><div id=\"wuf-adv\" style=\"font-family:inherit;font-size: small;color:#a7a7a7;text-align:center;display:block;\"></div><script type=\"text/javascript\">var z1t2hcur1lrk0wc;(function(d, t) {var s = d.createElement(t), options = {'userName':'codingforentrepreneurs','formHash':'z1t2hcur1lrk0wc','autoResize':true,'height':'\(height)','async':true,'host':'wufoo.com','header':'show','ssl':true};s.src = ('https:' == d.location.protocol ? 'https://' : 'http://') + 'www.wufoo.com/scripts/embed/form.js';s.onload = s.onreadystatechange = function() {var rs = this.readyState; if (rs) if (rs != 'complete') if (rs != 'loaded') return;try { z1t2hcur1lrk0wc = new WufooForm();z1t2hcur1lrk0wc.initialize(options);z1t2hcur1lrk0wc.display(); } catch (e) {}};var scr = d.getElementsByTagName(t)[0], par = scr.parentNode; par.insertBefore(s, scr);})(document, 'script');</script>"
        
        
        let embedCode = "<html><head></head><body>\(embedForm)</body></html>"
        let webView = UIWebView(frame: CGRectMake(0, 20, self.view.frame.width, height ))
        webView.loadHTMLString(embedCode, baseURL: nil)
        webView.backgroundColor = .blackColor()
        // webView.scrollView.scrollEnabled = false
        webView.scrollView.bounces = false
        webView.delegate = self
        
        self.view.addSubview(webView)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
