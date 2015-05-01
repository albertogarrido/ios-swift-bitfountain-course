// Playground - noun: a place where people can play

import UIKit

typealias WholeNumber = Int
typealias NumberWithDecimals = Double

var x = 49
var y = 10

var additionAnswer = x + y
var multiplicationAnswer = x * y
var substractionAnswer = x - y
var divisionAnswer = x / y
var moduleAnswer = x % y

var discountOnShoesAtStore = 0.3
var priceOfShoes:Double = 33
// ERROR:  var priceAfterDiscount = priceOfShoes * (1 - discountOnShoesAtStore)
var priceAfterDiscount = priceOfShoes * (1.0 - discountOnShoesAtStore)
var downPayment = 10.5
priceAfterDiscount = priceAfterDiscount - downPayment
// var 😍 = 1

var aliases:NumberWithDecimals = 1.1

//numeric literals
var largeNumber = 1_000_000_000_000



