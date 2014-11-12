// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var someTrueThing = true

someTrueThing == true

var someInt = 10

while someInt < 20 {
    // run some code
    someInt++
    // println("hello")
}

someInt
var numLoops = 0

runTheLoop: while someInt < 10 {
    numLoops++
    someInt += 3
    // println(someInt)
    switch numLoops {
    case 0...100:
        println(someInt)
        if someInt % 2 == 0 {
            println("\(someInt) is even")
            continue runTheLoop
        } else if someInt % 5 == 0 {
            println("\(someInt) is divisible by 5")
            // break runTheLoop
        }
    case 101...1000:
        println("something else")
    default:
        println("this is the default")
    }
}


var abc = 3

while abc < 1000000000 {
    println("\(abc)")
    abc = abc * abc * abc
}




var theList = ["abc", "Justin", "jack", "john", "abby", "jill"]

theList.count

while theList.count < 10 {
    theList.append("Another Name")
}

theList


println(theList[0..<4])
println(theList[0...3])





