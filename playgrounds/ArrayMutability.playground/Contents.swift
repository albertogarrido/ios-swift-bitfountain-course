//: Playground - noun: a place where people can play

import UIKit

var tigerNames = ["Tigger","Tirgress"]
tigerNames.count

tigerNames.append("Jacob")
tigerNames.count

tigerNames += ["john", "eliot"]
tigerNames.count

tigerNames[1] = "Spar"
tigerNames
tigerNames.count

tigerNames[0...2] = ["katie", "james", "george"]
tigerNames
tigerNames.count

tigerNames.insert("July", atIndex: 1)
tigerNames
tigerNames.count




tigerNames.removeLast()
println(tigerNames)

tigerNames.removeAtIndex(1)
println(tigerNames)

tigerNames.removeAll(keepCapacity: false)
println(tigerNames)