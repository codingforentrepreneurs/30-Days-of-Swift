// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var myStorage = [String:AnyObject]()

var bookDictionary = [String:String]()

myStorage["computer"] = "A device that does stuff"
// var theComputer = myStorage["computer"]
myStorage["computerSpeed"] = 1000.00
myStorage["computerSpeed2"] = 1230.120
myStorage["computerSpeed3"] = 1230.120
myStorage["computerSpeed4"] = 1230.120

myStorage.count

//for someVar in 0..<myStorage.count{
//    println(someVar)
//}

var arrayfromMyStorage = [AnyObject]()

for (key, value) in myStorage {
    // println(key)
    // println(value)
    // println(myStorage[key])
    
//    var num = myStorage[key] as? Double
//    println(num)
//    var str = myStorage[key] as? String
//    println(str)
    
    var num = value as? Double
    println(num)
    var str = value as? String
    println(str)
    if (num != nil) {
        println(num! * 3)
    } else if (str != nil) {
        println(str!)
        println("The \(key): \(str!).")
    } else {
        println("Is not a string or Integer")
    }
    arrayfromMyStorage.append(value)
    
}

arrayfromMyStorage

var theList = [AnyObject]()
theList.count
theList.append("Abc")
theList.append(12)
theList.append("Another Item")



theList.count

for key in 0..<theList.count {
    println(key) // number
    println(theList[key])
    var num = theList[key] as? Double
    println(num)
    var str = theList[key] as? String
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

for value in theList {
    println(value)
    
}


// Removing Values


var newArray = [120, 13230, 1201, 2903, "String"]

var abcItem = newArray.removeAtIndex(2) as? Double
newArray

abcItem!

newArray.append(abcItem!)
newArray.insert(abcItem!, atIndex: 0)
0..<10
0...10
newArray.removeRange(3...4)

var anotherArray = newArray + newArray


myStorage.removeValueForKey("computer")

myStorage["computer"]













