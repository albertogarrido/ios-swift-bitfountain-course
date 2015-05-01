//: Playground - noun: a place where people can play

import UIKit

var bottleString = "bottles"
for(var bottle = 99; bottle > 0; bottle--){
    if(bottle == 1) {
        bottleString = "bottle"
    }
    println("\(bottle) \(bottleString) of club soda on the wall")
}
println("No more bottles of club soda on the wall")