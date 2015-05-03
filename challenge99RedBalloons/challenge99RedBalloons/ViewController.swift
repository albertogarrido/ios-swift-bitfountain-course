//
//  ViewController.swift
//  challenge99RedBalloons
//
//  Created by Alberto Garrido on 3/5/15.
//  Copyright (c) 2015 Alberto Garrido. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var informationLabel: UILabel!
    @IBOutlet weak var balloonImage: UIImageView!
    @IBOutlet weak var prevButton: UIBarButtonItem!
    @IBOutlet weak var nextButton: UIBarButtonItem!
    
    var balloonsArray:[Balloon] = []
    let balloonsImages:[UIImage] = [
        UIImage(named: "RedBalloon1.jpg")!,
        UIImage(named: "RedBalloon2.jpg")!,
        UIImage(named: "RedBalloon3.jpg")!,
        UIImage(named: "RedBalloon4.jpg")!
    ]
    var currentBalloonCount = -1
    let balloonsLimits = 99
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateBalloons(balloons: self.balloonsLimits);
        self.prevButton.enabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func nextBalloonPressed(sender: UIBarButtonItem) {
        self.currentBalloonCount++
        showCurrentBalloon()
        enableDisableButtons()
    }
    
    @IBAction func prevBalloonPressed(sender: UIBarButtonItem) {
        self.currentBalloonCount--
        showCurrentBalloon()
        enableDisableButtons()
    }
    
    func enableDisableButtons(){
        if(currentBalloonCount - 1 < 0){
            self.prevButton.enabled = false
        } else {
            self.prevButton.enabled = true
        }
        
        if(currentBalloonCount + 1 >= balloonsLimits){
            self.nextButton.enabled = false
        } else {
            self.nextButton.enabled = true
        }

    }
    
    func showCurrentBalloon(){
        let currentBalloon = self.balloonsArray[self.currentBalloonCount]
        UIView.transitionWithView(self.view, duration: 0.475, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            self.informationLabel.text = "Ballon #\(currentBalloon.number)"
            self.balloonImage.image = currentBalloon.image
            }, completion: {
                (finished: Bool) -> () in
        })
    }
    
    func generateBalloons(#balloons:Int){
        var imgCount = 0
        for(var balloonNum = 1; balloonNum <= balloonsLimits; balloonNum++ ){
            var balloon = Balloon();
            balloon.number = balloonNum
            balloon.image = self.balloonsImages[imgCount]
            imgCount = (imgCount == balloonsImages.count - 1) ? 0 : imgCount + 1;
            self.balloonsArray.append(balloon);
        }
    }
}

