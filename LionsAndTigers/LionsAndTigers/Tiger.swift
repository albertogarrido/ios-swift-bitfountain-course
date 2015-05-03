//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Alberto Garrido on 2/5/15.
//  Copyright (c) 2015 Alberto Garrido. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named: "")
    
    func chuff() {
        println("Tigger \(name): Chuff Chuff!!")
    }
    
    func chuff(#times: Int) {
        for i in 0...times { //for (var chuff = 0; chuff < times; chuff++){
            self.chuff()
        }
    }
    func chuff(#times: Int, isLoud: Bool) {
        for (var chuffTimes = 1; chuffTimes <= times; chuffTimes++){
            if (isLoud){
                self.chuff()
            } else {
                println("Tigger \(name): Chuff Chuff!!")
            }
        }
    }
    func ageInTigerYearsFromAge(regularAge: Int) -> Int {
        return regularAge * 3
    }
    func randomFact() -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        var randomFact:String
        switch randomNumber{
            case 1:
                randomFact = "The Tiger is the biggest species in the cat family"
                break;
            case 2:
                randomFact = "Tigers can reach a length of 3.3 meters"
                break;
            case 3:
                randomFact = "A group of tigers is known as an 'ambush' or 'streak'"
                break;
            default:
                randomFact = "No facts available"
        }
        
    
        return randomFact
    }
}