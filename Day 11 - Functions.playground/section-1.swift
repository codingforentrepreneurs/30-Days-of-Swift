// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func helloWorld(){
    println("Hello World!")
}

helloWorld()

func giveUsBool() -> Bool {
    return true
}

var aBool = giveUsBool()

aBool

func helloName(name:String) -> String {
    return "Hello \(name)"
}

var theName: String

if aBool {
    theName = helloName("Justin")
} else {
    theName = helloName("Unknown")
}

println(theName)

func giveUsResults(name:String, theBool: Bool) -> (String, Bool) {
    if theBool {
        var theName = helloName(name)
    } else {
        var theName = helloName("Unknown")
    }
    return ("\(theName) and \(theBool)", theBool)
}

var (myName, isTrue) = giveUsResults("Justin", true)

println(myName)
println(isTrue)

giveUsResults("Steve", true)

giveUsResults("John", true)




func addStuff(x: Int, y:Int) -> Int{
    return x * y
}

addStuff(10, 32)

func createDictionary(key:String, value:AnyObject) -> Dictionary<String, AnyObject> {
    return [key:value]
}


var aDictionary = createDictionary("name", "Justin")
aDictionary
aDictionary["age"] = 27

//var emptyDictionary = Dictionary<String, AnyObject>()
var emptyDictionary = [String:AnyObject]()


func loopThroughData(theInt:Int, dataInfo:String...) -> Array<String>{
    var newArray = [String]()
    for data in dataInfo{
        println(data)
        if data != "there" {
            newArray.append(data)
        }
    }
    return newArray
}

// loopThroughData("hello", "there", "buddy")

loopThroughData(12, "hello", "there", "buddy")


















