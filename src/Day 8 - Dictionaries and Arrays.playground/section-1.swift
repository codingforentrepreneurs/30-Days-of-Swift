// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var myStorage = [String:AnyObject]()

var bookDictionary = [String:String]()

myStorage["computer"] = "A device that does stuff"
// var theComputer = myStorage["computer"]
myStorage["computerSpeed"] = 1000.00
myStorage["computerSpeed2"] = 1230.120

myStorage.count

//for someVar in 0..<myStorage.count{
//    println(someVar)
//}

for (key, value) in myStorage {
    // println(key)
    // println(value)
    // println(myStorage[key])
    var num = myStorage[key] as? Double
    println(num)
    var str = myStorage[key] as? String
    println(str)
    
    if (num != nil) {
        println(num! * 3)
    } else if (str != nil) {
        println(str!)
        println("The \(key): \(str!).")
    } else {
        println("Is not a string or Integer")
    }
    
}