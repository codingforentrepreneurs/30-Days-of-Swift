// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var str2:String

//str2 = 12
// str2 = "hello there"

"\(str) hi"

func helloThere(name:String, favNum:Int)->String {
    return "Hello there, your name is \"\(name)\"! \n Your favorite number is: \t\t\t\(favNum) and you use the currency \u{2665}"
}

helloThere("Justin", 3)

var myName = "Justin"
var myJob = "Coding Teacher"

"Hello, my name is \(myName) and I am a \(myJob)! I also \u{2665} it!"