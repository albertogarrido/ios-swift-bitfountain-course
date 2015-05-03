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
    
    var balloonsArray:[Balloon] = []
    let balloonsImages:[UIImage] = [
        UIImage(named: "RedBalloon1.jpg")!,
        UIImage(named: "RedBalloon2.jpg")!,
        UIImage(named: "RedBalloon3.jpg")!,
        UIImage(named: "RedBalloon4.jpg")!
    ]
    var currentBalloonCount = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imgCount = 0
        for(var balloonNum = 1; balloonNum < 100; balloonNum++ ){
            var balloon = Balloon();
            balloon.number = balloonNum
            balloon.image = self.balloonsImages[imgCount]
            imgCount = (imgCount == balloonsImages.count - 1) ? 0 : imgCount + 1;
            self.balloonsArray.append(balloon);
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextBalloonPressed(sender: UIBarButtonItem) {
        
        self.currentBalloonCount++
        let currentBalloon = self.balloonsArray[self.currentBalloonCount]
        
        UIView.transitionWithView(self.view, duration: 0.475, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            self.informationLabel.text = "Ballon #\(currentBalloon.number)"
            self.balloonImage.image = currentBalloon.image
            
            }, completion: {
                (finished: Bool) -> () in
        })
    }
}

