//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Alberto Garrido on 30/11/14.
//  Copyright (c) 2014 Alberto Garrido. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShowSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoesSizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPress(sender: UIButton) {
        let conversionConstant = 30
        let sizeFromTextField:Int = mensShoeSizeTextField.text.toInt()!
        
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField) in US is \(sizeFromTextField + conversionConstant)" + " in Europe"
        mensShoeSizeTextField.text = ""
        
    }

    @IBAction func convertWomensShoesSizeButtonPress(sender: AnyObject) {
        let sizeFromTextField = Double((womensShowSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShoesSizeLabel.hidden = false
        womensConvertedShoesSizeLabel.text = "\(sizeFromTextField) in US is \(sizeFromTextField + conversionConstant)" + " in Europe"
        womensShowSizeTextField.text = ""
        

    }
}

