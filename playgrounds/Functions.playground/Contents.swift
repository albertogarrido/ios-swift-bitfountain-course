//: Playground - noun: a place where people can play

import UIKit


func printHello(){
    println("hello world")
    println("hello class")
}

//printHello()
//printHello()
//printHello()
//printHello()

func printNumberSupplied(number : Int){
    println("The number \(number)")
    println("The number times 3 \(number * 3)")
}

//printNumberSupplied(8)

func turnOffAppliance (applianceName: String, isOn: Bool){
    if(isOn){
        println("please turn off the \(applianceName)")
    } else {
        println("I actually turned the \(applianceName) off already")
    }
}

//turnOffAppliance("stove", false)
//turnOffAppliance("TV", true)
//turnOffAppliance("Toaster", true)

func additionFunction(firstArg: Int, secondArg: Int) -> Int {
    
    let sumOfArg = firstArg + secondArg
    
    return sumOfArg
}

var additionAnswerOfInteger = additionFunction(8, 1999)
additionAnswerOfInteger

func helloWorld() -> (first: String,second: String){
    return ("hello", "world")
}

var results = helloWorld()
println("\(results.first), \(results.second)")

