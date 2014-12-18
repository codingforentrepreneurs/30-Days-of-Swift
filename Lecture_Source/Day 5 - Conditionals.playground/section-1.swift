// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var userStatus: Bool = false

userStatus == true
userStatus == false


str == "hello, playground"

var temp = 85

if temp < 80 {
    println("it's cool out")
} else {
    println("it's warm")
}

temp <= 85
temp == 90
temp >= 32
temp != 43
temp >= 43 // cannot do temp !< 43

!userStatus

if userStatus {
    println("user is logged in!")
} else if !userStatus {
    println("user is not logged in!")
} else {
    println("somethign went wrong")
}



if userStatus == true {
    println("user is logged in!")
} else if !userStatus {
    println("user is not logged in!")
} else {
    println("somethign went wrong")
}


var userStringStatus = "Abc"

if userStringStatus == "Some String" {
    println("user is logged in!")
} else if userStringStatus == "Abc" {
    println("user is not logged in!")
} else {
    println("somethign went wrong")
}






