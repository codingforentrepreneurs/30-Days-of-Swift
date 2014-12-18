// Playground - noun: a place where people can play

import UIKit

var str = "Hello, Justin"

if str == "Hello, playground." {
    println("we added a period")
} else {
    println("it's the same")
}

switch str {
case "Hello, playground":
    println("we will stop here")
case "Hello, Justin":
    println("it said hi to me")
default:
    println("it is the default")
}


var num = 1200

var theNumberIs: String

switch num {
case 0...10:
    println(num)
    theNumberIs = "The number is \(num)"
case 1000...10_000_000:
    if num%5 == 0{
        println("divisible by 5")
    }
    println("big number")
    theNumberIs = "The number is \(num)"
case let x where x%5 == 0:
    theNumberIs = "Divisible by 5"
default:
    println("Num is \(num)")
    theNumberIs = "The number is \(num)"
}

println(theNumberIs)

