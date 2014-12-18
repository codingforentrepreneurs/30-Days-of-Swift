// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let imageURLString = "http://www.wideeyedtours.com/wp-content/uploads/2011/05/Page-25-Beach-Breaks-620x348.jpg"
let url = NSURL(string: imageURLString)
let imageData = NSData(contentsOfURL: url!)
let image = UIImage(data:imageData!)


let imageView = UIImageView(frame: CGRectMake(0, 0, 200, 200))
imageView.image = image

imageView.layer.borderWidth = 1.0
imageView.layer.borderColor = UIColor.blackColor().CGColor
imageView.layer.cornerRadius = imageView.frame.width / 16.0
imageView.clipsToBounds = true
imageView.contentMode = UIViewContentMode.ScaleAspectFill



imageView