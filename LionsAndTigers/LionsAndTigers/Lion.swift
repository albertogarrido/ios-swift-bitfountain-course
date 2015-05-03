//
//  Lion.swift
//  LionsAndTigers
//
//  Created by Alberto Garrido on 3/5/15.
//  Copyright (c) 2015 Alberto Garrido. All rights reserved.
//

import Foundation
import UIKit

class Lion {
    
    var name = ""
    var age = 0
    var isAlphaMale = false
    var image = UIImage(named: "")
    var subspecies = ""
    
    func changeToAlphaMale() {
        self.isAlphaMale = true
    }
    
    func roar(){
        println("\(self.name): Roar Roar!")
    }
    
    func randomFact() -> String {
        var randomFact:String
        if self.isAlphaMale {
            randomFact = "Male lions are easy to recognize thanks to their distinctive manes. Males with darker manes are more likely to attract females."
        } else {
            randomFact = "Female Lionesses form the stable social unit and do not tolerate outside females."
        }
        return randomFact
    }
}