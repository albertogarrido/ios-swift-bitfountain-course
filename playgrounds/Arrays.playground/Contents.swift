//: Playground - noun: a place where people can play

import UIKit

// var tigerNames:Array<String>
// var tigerNames:[String]

var tigerNames = ["Tigger","Tirgress","Jacob", "Spar"]
var tigerAges = [3, 2, 4, 5]

var emptyArray:[String] = []
if (emptyArray.isEmpty) {
    println("there are no elements in this array")
} else {
    println("there is \(emptyArray.count) elements")
}

println("there is \(emptyArray.count) elements")
println("there is \(tigerNames.count) elements")


let firstNameFromArray = tigerNames[0]
let secondAgeFromAgesArray = tigerAges[2]

for(var i = 0; i < tigerNames.count; i++){
    println(tigerNames[i])
}

for tigerName in tigerNames{
    println(tigerName)
}

for tigerIndex in 1...5 {
    println(tigerIndex)
}

for (index, tigerName) in enumerate(tigerNames){
    println("Index: \(index), tiger name: \(tigerName).")
}
