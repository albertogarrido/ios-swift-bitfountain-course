//
//  LionCub.swift
//  LionsAndTigers
//
//  Created by Alberto Garrido on 3/5/15.
//  Copyright (c) 2015 Alberto Garrido. All rights reserved.
//

import Foundation

class LionCub: Lion{
    func rubLionCubsBelly(){
        println("\(self.name): Snuggle and be happy")
    }
    override func roar(){
        super.roar()
        println("\(self.name): Growl Growl")
    }
    
    override func randomFact() -> String {
        var randomFactString:String
        if ( isAlphaMale ) {
            randomFactString = "Cubs are usually hidden in the dense bush for approximately six weeks."
        }
        else {
            randomFactString = "Cubs begin eating meat at about the age of six weeks"
        }
        return randomFactString
    }
}