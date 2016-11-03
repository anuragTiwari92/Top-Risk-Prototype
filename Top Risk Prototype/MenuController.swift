//
//  MenuController.swift
//  Top Risk Prototype
//
//  Created by AnuragTiwari on 10/24/16.
//  Copyright © 2016 AnuragTiwari. All rights reserved.
//

import UIKit

class MenuController: UIViewController {
    

    @IBOutlet var Unit1: UIButton!
    @IBOutlet var Unit2: UIButton!
    @IBOutlet var Unit3: UIButton!
    @IBOutlet var Unit4: UIButton!
    @IBOutlet var Unit5: UIButton!
    @IBOutlet var Unit6: UIButton!
    @IBOutlet var Unit7: UIButton!
    @IBOutlet var Unit8: UIButton!
    
    @IBOutlet var u1: UIButton!
    @IBOutlet var u2: UIButton!
    @IBOutlet var u3: UIButton!
    @IBOutlet var u4: UIButton!
    @IBOutlet var u5: UIButton!
    @IBOutlet var u6: UIButton!
    @IBOutlet var u7: UIButton!
    @IBOutlet var u8: UIButton!
    
    @IBAction func touched1(_ sender: AnyObject) {
        Unit1.backgroundColor = UIColor.clear
    }
    
    @IBAction func notTouched1(_ sender: AnyObject) {
        Unit1.backgroundColor = UIColor.red
        u1.backgroundColor = UIColor.white
        Unit1.setTitleColor(UIColor.black, for: UIControlState.highlighted)
    }
   
    @IBAction func notTouched2(_ sender: AnyObject) {
        Unit2.backgroundColor = UIColor.blue
        u2.backgroundColor = UIColor.white
    }
    
    @IBAction func notTouched3(_ sender: AnyObject) {
        Unit3.backgroundColor = UIColor.yellow
        u3.backgroundColor = UIColor.white
    }
    
    @IBAction func notTouched4(_ sender: AnyObject) {
        Unit4.backgroundColor = UIColor.magenta
        u4.backgroundColor = UIColor.white
    }
    @IBAction func notTouched5(_ sender: AnyObject) {
        Unit5.backgroundColor = UIColor.red
        u5.backgroundColor = UIColor.white
    }
    
    @IBAction func notTouched6(_ sender: AnyObject) {
        Unit6.backgroundColor = UIColor.cyan
        u6.backgroundColor = UIColor.white
    }
    
    @IBAction func notTouched7(_ sender: AnyObject) {
        Unit7.backgroundColor = UIColor.magenta
        u7.backgroundColor = UIColor.white
    }
    
    @IBAction func notTouched8(_ sender: AnyObject) {
        Unit8.backgroundColor = UIColor.orange
        u8.backgroundColor = UIColor.white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Unit1.layer.cornerRadius = 5
        Unit1.layer.borderWidth = 1
        Unit1.layer.borderColor = UIColor.black.cgColor
        
        u1.layer.cornerRadius = 10
        u1.layer.borderWidth = 1
        u1.layer.borderColor = UIColor.black.cgColor
        
        //Unit2.layer.cornerRadius = 5
        Unit2.layer.borderWidth = 1
        Unit2.layer.borderColor = UIColor.black.cgColor
        u2.layer.cornerRadius = 10
        u2.layer.borderWidth = 1
        u2.layer.borderColor = UIColor.black.cgColor
       
        //Unit3.layer.cornerRadius = 5
        Unit3.layer.borderWidth = 1
        Unit3.layer.borderColor = UIColor.black.cgColor
        u3.layer.cornerRadius = 10
        u3.layer.borderWidth = 1
        u3.layer.borderColor = UIColor.black.cgColor
        
        //Unit4.layer.cornerRadius = 5
        Unit4.layer.borderWidth = 1
        Unit4.layer.borderColor = UIColor.black.cgColor
        u4.layer.cornerRadius = 10
        u4.layer.borderWidth = 1
        u4.layer.borderColor = UIColor.black.cgColor
        
       // Unit5.layer.cornerRadius = 5
        Unit5.layer.borderWidth = 1
        Unit5.layer.borderColor = UIColor.black.cgColor
        u5.layer.cornerRadius = 10
        u5.layer.borderWidth = 1
        u5.layer.borderColor = UIColor.black.cgColor
        
        //Unit6.layer.cornerRadius = 5
        Unit6.layer.borderWidth = 1
        Unit6.layer.borderColor = UIColor.black.cgColor
        u6.layer.cornerRadius = 10
        u6.layer.borderWidth = 1
        u6.layer.borderColor = UIColor.black.cgColor
        
       // Unit7.layer.cornerRadius = 5
        Unit7.layer.borderWidth = 1
        Unit7.layer.borderColor = UIColor.black.cgColor
        u7.layer.cornerRadius = 10
        u7.layer.borderWidth = 1
        u7.layer.borderColor = UIColor.black.cgColor
        
       // Unit8.layer.cornerRadius = 5
        Unit8.layer.borderWidth = 1
        Unit8.layer.borderColor = UIColor.black.cgColor
        u8.layer.cornerRadius = 10
        u8.layer.borderWidth = 1
        u8.layer.borderColor = UIColor.black.cgColor
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
