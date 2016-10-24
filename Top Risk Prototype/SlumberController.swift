//
//  SlumberController.swift
//  Top Risk Prototype
//
//  Created by AnuragTiwari on 9/29/16.
//  Copyright © 2016 AnuragTiwari. All rights reserved.
//


import UIKit

class SlumberController: UIViewController {
    
    @IBOutlet var SlumberVideo: UIWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //the variable below is where the youtube videos can be changed/updated - Anurag
       let ytURL = "https://www.youtube.com/embed/VPA8y06o0EQ"
        
        SlumberVideo.allowsInlineMediaPlayback = true;
        SlumberVideo.loadHTMLString("<iframe width=\"\(SlumberVideo.frame.width)\" height=\"\(SlumberVideo.frame.height)\" src=\"\(ytURL)?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil)
        //SlumberVideo.reload()
       // SlumberVideo.stopLoading()
       // SlumberVideo.loadHTMLString(nil, baseURL: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillDisappear(_ animated: Bool) {
        SlumberVideo.reload()
        super.viewWillDisappear(animated)
    }
    
    
    
}