//
//  LocationViewController.swift
//  Simple
//
//  Created by Justin Mitchel on 12/16/14.
//  Copyright (c) 2014 Coding for Entrepreneurs. All rights reserved.
//

import UIKit
import MapKit

class LocationViewController: UIViewController, MKMapViewDelegate {
    var address = "171 East 17th Street, Costa Mesa, CA 92627"
    var address2 = "3664 South Bristol St., Santa Ana, CA 92704"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let map = MKMapView(frame: CGRectMake(0, 0, self.view.frame.width, self.view.frame.height))
        map.delegate = self
        
        // btn tag = 1
        let point = MKPointAnnotation()
        point.coordinate = CLLocationCoordinate2D(latitude: 33.635977, longitude: -117.920556)
        point.title = "Costa Mesa Location"
        point.subtitle = self.address
        
        map.addAnnotation(point)
        
        
         // btn tag = 2
        let point2 = MKPointAnnotation()
        point2.coordinate = CLLocationCoordinate2D(latitude: 33.698906, longitude: -117.885619)
        point2.title = "Santa Ana Location"
        point2.subtitle = self.address2
        
        map.addAnnotation(point2)
        
        
        
        
        var region = map.region as MKCoordinateRegion
        region.center = point.coordinate
        region.span.latitudeDelta = 0.2
        region.span.longitudeDelta = 0.20
        
        map.selectAnnotation(point, animated: false)
        map.setRegion(region, animated: false)
        
        self.view.addSubview(map)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Map Related
    
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        let reuseID = "pin"
        var anno = mapView.dequeueReusableAnnotationViewWithIdentifier(reuseID) as? MKPinAnnotationView
        if anno == nil {
            anno = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuseID)
            anno!.pinColor = MKPinAnnotationColor.Purple
            anno!.canShowCallout = true
            anno!.animatesDrop = true
            let btn = UIButton(frame: CGRectMake(0, 0, 150.0, anno!.bounds.height))
            btn.setTitle("Directions", forState: UIControlState.Normal)
            btn.backgroundColor = .blackColor()
            btn.addTarget(self, action: "buttonTouched:", forControlEvents: UIControlEvents.TouchUpInside)
            
            
            var pointTitle = anno!.annotation.title! as String
            
            switch pointTitle {
            case "Costa Mesa Location":
                btn.tag = 1
            case "Santa Ana Location":
                btn.tag = 2
            default:
                btn.tag = 1
            }
            
            anno!.rightCalloutAccessoryView = btn
//            anno!.leftCalloutAccessoryView = btn
        }
        
        return anno
    }
    
    func buttonTouched(sender:UIButton) {
        println(sender.tag)
        
        let appleMapString = "http://maps.apple.com/?daddr="
        let googleMapString = "http://maps.google.com/?q="
        
        let tagIs = sender.tag as Int
        
        var urlAdd: String?
        
        switch tagIs {
        case 1:
            urlAdd = self.address
        case 2:
            urlAdd = self.address2
        default:
            urlAdd = self.address
        }
        
        println(appleMapString)
        println(urlAdd!)
        
        let addressString = urlAdd!.stringByReplacingOccurrencesOfString(" ", withString: "+", options: NSStringCompareOptions.LiteralSearch, range: nil)
        
        println(addressString)
        
        let mapURLString = appleMapString + addressString
        
        println(mapURLString)
        let mapURL = NSURL(string: mapURLString)
        println(mapURL)
        
        UIApplication.sharedApplication().openURL(mapURL!)
        
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
