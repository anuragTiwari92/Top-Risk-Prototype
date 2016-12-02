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
    

    
   
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        whatIS.titleLabel?.textAlignment = NSTextAlignment.center
        whatIS.layer.borderWidth = 1
        whatIS.layer.borderColor = UIColor.black.cgColor
        
        puzzleButton.layer.borderColor = UIColor.black.cgColor
        puzzleButton.layer.borderWidth = 1
        
        whatsInApp.layer.borderWidth = 1
        whatsInApp.layer.borderColor = UIColor.black.cgColor
        
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
