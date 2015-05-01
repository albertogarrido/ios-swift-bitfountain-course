//: Playground - noun: a place where people can play

import UIKit

for (var meditationHours = 1; meditationHours < 100; meditationHours++){
    println("I'm getting more enlightened \(meditationHours)");
}

// LIMITATIONS

var wheat = 1

for(var i = 0; i < 64; ++i){
    wheat *= 2
    println("location on the board \(i) and \(wheat) pieces of wheat")
}


var bottleString = "bottles"
for(var bottle = 99; bottle > 0; bottle--){
    if(bottle == 1) {
        bottleString = "bottle"
    }
    println("\(bottle) \(bottleString) of club soda on the wall")
}