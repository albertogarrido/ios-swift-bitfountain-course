//
//  ViewController.swift
//  Postcard
//
//  Created by Alberto Garrido on 25/11/14.
//  Copyright (c) 2014 Alberto Garrido. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Hello, world");
        messageLabel.hidden = false;
        messageLabel.text = "Please send an email";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.text = enterMessageTextField.text;
        messageLabel.hidden = false;
        messageLabel.textColor = UIColor.redColor();

        nameLabel.text = "Sent by: " + enterNameTextField.text;
        nameLabel.hidden = false;
        nameLabel.textColor = UIColor.blueColor();
        
        enterMessageTextField.text = "";
        enterMessageTextField.resignFirstResponder();
        
        enterNameTextField.text = "";
        enterNameTextField.resignFirstResponder();
        
        mailButton.setTitle("mail sent!", forState: UIControlState.Normal);
    
    }
}

