//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Alberto Garrido on 30/11/14.
//  Copyright (c) 2014 Alberto Garrido. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogYearsResultLabel: UILabel!
    @IBOutlet weak var humanYearsField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPress(sender: UIButton) {
        
        let conversionRate = 7
        
        dogYearsResultLabel.text = "\(humanYearsField.text) human years are \(humanYearsField.text.toInt()! * conversionRate) years in a dog live"
        dogYearsResultLabel.hidden = false
        
        humanYearsField.resignFirstResponder();
    }

    @IBAction func convertToRealDogYearsButtonPress(sender: UIButton) {
        let conversionRate2FirstYears:Double = 10.5
        let conversionRateGreaterThan2Years:Double = 4
        
        let humanYears:Double = (humanYearsField.text as NSString).doubleValue
        
        var realDogYears:Double = 0;
        
        if(humanYears <= 2){
            realDogYears = humanYears * conversionRate2FirstYears;
        } else {
            realDogYears = (2 * conversionRate2FirstYears) + (conversionRateGreaterThan2Years * (humanYears - 2));
        }
        
        dogYearsResultLabel.text = "\(humanYearsField.text) human years are \(realDogYears) REAL years in a dog live"
        dogYearsResultLabel.hidden = false
        
        humanYearsField.resignFirstResponder();
    }
}

