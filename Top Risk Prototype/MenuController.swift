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
    

    @IBAction func touched1(_ sender: AnyObject) {
        Unit1.backgroundColor = UIColor.clear
    }
    
    @IBAction func notTouched1(_ sender: AnyObject) {
        Unit1.backgroundColor = UIColor.red
    }
   
    @IBAction func notTouched2(_ sender: AnyObject) {
        Unit2.backgroundColor = UIColor.blue
    }
    
    @IBAction func notTouched3(_ sender: AnyObject) {
        Unit3.backgroundColor = UIColor.yellow
    }
    
    @IBAction func notTouched4(_ sender: AnyObject) {
        Unit4.backgroundColor = UIColor.magenta
    }
    @IBAction func notTouched5(_ sender: AnyObject) {
        Unit5.backgroundColor = UIColor.red
    }
    
    @IBAction func notTouched6(_ sender: AnyObject) {
        Unit6.backgroundColor = UIColor.cyan
    }
    
    @IBAction func notTouched7(_ sender: AnyObject) {
        Unit7.backgroundColor = UIColor.magenta
    }
    
    @IBAction func notTouched8(_ sender: AnyObject) {
        Unit8.backgroundColor = UIColor.orange
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Unit1.layer.cornerRadius = 5
        Unit1.layer.borderWidth = 1
        Unit1.layer.borderColor = UIColor.black.cgColor
        
        
        Unit2.layer.cornerRadius = 5
        Unit2.layer.borderWidth = 1
        Unit2.layer.borderColor = UIColor.black.cgColor
       
        Unit3.layer.cornerRadius = 5
        Unit3.layer.borderWidth = 1
        Unit3.layer.borderColor = UIColor.black.cgColor
        Unit4.layer.cornerRadius = 5
        Unit4.layer.borderWidth = 1
        Unit4.layer.borderColor = UIColor.black.cgColor
        Unit5.layer.cornerRadius = 5
        Unit5.layer.borderWidth = 1
        Unit5.layer.borderColor = UIColor.black.cgColor
        Unit6.layer.cornerRadius = 5
        Unit6.layer.borderWidth = 1
        Unit6.layer.borderColor = UIColor.black.cgColor
        Unit7.layer.cornerRadius = 5
        Unit7.layer.borderWidth = 1
        Unit7.layer.borderColor = UIColor.black.cgColor
        Unit8.layer.cornerRadius = 5
        Unit8.layer.borderWidth = 1
        Unit8.layer.borderColor = UIColor.black.cgColor
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
