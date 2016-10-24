//
//  WelcomeController.swift
//  Top Risk Prototype
//
//  Created by AnuragTiwari on 10/24/16.
//  Copyright © 2016 AnuragTiwari. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {
    
    @IBOutlet var MenuButton: UIButton!
    
    @IBOutlet var BORButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        MenuButton.layer.cornerRadius = 5
        MenuButton.layer.borderWidth = 2
        MenuButton.layer.borderColor = UIColor.black.cgColor
        
        BORButton.layer.cornerRadius = 5
        BORButton.layer.borderWidth = 2
        BORButton.layer.borderColor = UIColor.black.cgColor
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
