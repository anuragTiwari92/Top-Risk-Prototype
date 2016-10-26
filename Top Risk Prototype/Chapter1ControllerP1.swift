//
//  Chapter1ControllerP1.swift
//  Top Risk Prototype
//
//  Created by AnuragTiwari on 10/26/16.
//  Copyright © 2016 SkylerLecroy. All rights reserved.
//

import UIKit

class Chapter1ControllerP1: UIViewController{
    
    @IBOutlet var whatIS: UIButton!
    
    @IBOutlet var puzzleButton: UIButton!
    
    @IBOutlet var whatsInApp: UIButton!
    
    @IBOutlet var WhatISLabel: UILabel!
    
    @IBAction func popupLabel(_ sender: AnyObject) {
        WhatISLabel.isHidden = false
    }
    
    
    @IBAction func touchupLabel(_ sender: AnyObject) {
        WhatISLabel.isHidden = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        whatIS.layer.cornerRadius = 5
        whatIS.layer.borderWidth = 1
        whatIS.layer.borderColor = UIColor.black.cgColor
        
        puzzleButton.layer.cornerRadius = 5
        puzzleButton.layer.borderColor = UIColor.black.cgColor
        puzzleButton.layer.borderWidth = 1
        
        whatsInApp.layer.cornerRadius = 5
        whatsInApp.layer.borderWidth = 1
        whatsInApp.layer.borderColor = UIColor.black.cgColor
        
        WhatISLabel.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
