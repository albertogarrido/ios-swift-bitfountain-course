//: Playground - noun: a place where people can play

import UIKit

var myTuple = ("Tigger" , "Bengal", 3)

let name = myTuple.0

var secondTiggerTuple = (name: "Tigress", breed: "Malayan", age: 2)

let age = secondTiggerTuple.age

switch secondTiggerTuple {
    case ("Tigress", "Malayan", 2):
        println("first = true")
    case (_, "Indochinesse",_):
        println("second = true")
    default:
        println("default is occurring")
}


