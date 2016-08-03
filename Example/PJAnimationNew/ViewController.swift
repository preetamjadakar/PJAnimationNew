//
//  ViewController.swift
//  PJAnimationNew
//
//  Created by preetam on 08/03/2016.
//  Copyright (c) 2016 preetam. All rights reserved.
//

import UIKit
import PJAnimationNew

class ViewController: UIViewController {

    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRectMake(10, 20, 200, 30))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.blinkingLabel.center = self.view.center;
        self.blinkingLabel.textAlignment = .Center
        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFontOfSize(30)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRectMake(10, 60, 125, 30))
        toggleButton.center = self.view.center;
        var refFrame = toggleButton.frame
        refFrame.origin.y += 100
        
        toggleButton.frame = refFrame
        
        toggleButton.setTitle("Toggle Blinking", forState: .Normal)
        toggleButton.setTitleColor(UIColor.redColor(), forState: .Normal)
        toggleButton.addTarget(self, action: #selector(ViewController.toggleBlinking), forControlEvents: .TouchUpInside)
        view.addSubview(toggleButton)
    }
    
    func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }
    

}

