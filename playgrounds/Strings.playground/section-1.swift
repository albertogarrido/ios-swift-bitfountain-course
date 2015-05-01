// Playground - noun: a place where people can play

import UIKit

var string1 = "";
string1 = "hello"
let string2 = "World"
var helloWorldString = string1 + " " + string2;
helloWorldString = helloWorldString.uppercaseString
helloWorldString = helloWorldString.lowercaseString

var firstCharacter:Character = "!"
helloWorldString =  helloWorldString + [firstCharacter]


var x = 5
var newString = "\(x)" + helloWorldString

var floatValue = 3.5
var newFloatString = "\(floatValue) " + helloWorldString

var numberString = "9"
// retunrs an optional
var numberStringToInt = numberString.toInt()
//making the optional a number
var optionalToInt = numberStringToInt!
optionalToInt = optionalToInt * 2

//should return nil Why Some 9 ?
//var numberString2 = "9asd2"
//var numberStringToInt2 = numberString.toInt()
//var optionalToInt = numberStringToInt!



var doubleString = "3.9585"
var doubleValueFromString = Double((doubleString as NSString).doubleValue)
// other option
/*
var doubleString:NSString = "3.98765"
var doubleValueFromString = doubleString.doubleValue
*/
doubleValueFromString *= 2


